class User {
  int _number;

  User(this._number);

  int get number => _number;

  set number(int num) {

    if (num <= 0) {
      print(throw Exception("it's number is negative number"));
    } else {
      _number = num;
    }
  }
}
