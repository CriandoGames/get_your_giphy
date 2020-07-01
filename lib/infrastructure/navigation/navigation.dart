import 'package:get/get.dart';
import 'package:get_your_giphy/infrastructure/navigation/routes.dart';
import 'package:get_your_giphy/presentation/home/home.screen.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(name: Routes.HOME, page: () => HomeScreen()),
  ];
}
