import 'package:timer_app/headers.dart';

class AppRoutes {
  static String homePage = 'home_page';
  static String buttonPage = 'button_page';
  static Map<String, WidgetBuilder> routes = {
    homePage: (context) => const HomePage(),
    buttonPage: (context) => const ButtonPage(),
  };
}
