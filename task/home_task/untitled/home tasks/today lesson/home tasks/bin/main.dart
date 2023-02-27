import 'package:home_tasks/console_extension.dart';
import 'package:home_tasks/hex_to_rgb_generic_method.dart';
import 'package:home_tasks/storage.dart';
import 'package:home_tasks/user_class.dart';

void main() {
  List list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List list1 = ['1a', '2s', '3d', '4f', '5f', '6s', 'a7', '8s', '9a'];
  List list2 = [1, 2, 3, 4, 5, '6f', '7d', '8s', '9a'];
  List list3 = ['1a', 'a2d', 'a3', 'd4a', 'd5d', 6, 7, 8, 9];
  list.console();
  list1.console();
  list2.console();
  list3.console();

  Storage storage = Storage();

  print(storage.storeDate(1, "Salom"));
  storage.readDate();

  SuperUser user = SuperUser("Nas", "sa");

  AuthService authService = AuthService();

  authService.signUp("as");
}
