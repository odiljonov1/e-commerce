import '../models/cart_model.dart';
import '../services/io_service.dart';
import 'cart_page.dart';
import 'category_page.dart';
import 'intro_page.dart';

Cart cart = Cart(01, user.id, DateTime.now().toString(), []);

class HomePage {
  HomePage() {
    print("Home Page");
    viewHome();
  }

  void viewHome() {
    print("0. Exit");
    print("1. Cart Page");
    print("2. Category Page");
    print("3. Log Out");
    int page = (io.number).toInt();

    print('\n\n');
    switch(page) {
      case 0: {
        continue exit;
      }
      case 1: {
        CartPage();
      } break;
      case 2: {
        CategoryPage();
      } break;
      case 3: {
        IntroPage();
      } break;
      exit: default: {
        print("Thank you for attention! Exit!");
      }
    }
  }
}