class Solution {
  num findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    int m = nums1.length, n = nums2.length;
    if (m > n) {
      // Ensure nums1 is shorter or equal to nums2
      return findMedianSortedArrays(nums2, nums1);
    }

    int left = 0, right = m, halfLen = (m + n + 1) ~/ 2;
    while (left <= right) {
      int i = (left + right) ~/ 2;
      int j = halfLen - i;
      if (i < m && nums2[j-1] > nums1[i]) {
        left = i + 1;
      } else if (i > 0 && nums1[i-1] > nums2[j]) {
        right = i - 1;
      } else {
        int maxLeft;
        if (i == 0) {
          maxLeft = nums2[j-1];
        } else if (j == 0) {
          maxLeft = nums1[i-1];
        } else {
          maxLeft.max(nums1[i-1], nums2[j-1]);
        }
        if ((m + n) % 2 == 1) {
          return maxLeft;
        }
        int minRight;
        if (i == m) {
          minRight = nums2[j];
        } else if (j == n) {
          minRight = nums1[i];
        } else {
          minRight = math.min(nums1[i], nums2[j]);
        }
        return (maxLeft + minRight) / 2.0;
      }
    }
    throw Exception("Arrays are not sorted");
  }
}