import 'package:task/user.dart';

void main() {
  User user = User(5);
  print(user.number);

  try {
    user.number = -100;
  } catch (e) {
    print(e);
  }
}
