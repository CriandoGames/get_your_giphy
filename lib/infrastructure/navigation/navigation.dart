import 'package:get/get.dart';
import 'package:get_your_giphy/infrastructure/navigation/bindings/controllers/gif.controller.binding.dart';
import 'package:get_your_giphy/infrastructure/navigation/bindings/controllers/home.controller.binding.dart';
import 'package:get_your_giphy/infrastructure/navigation/routes.dart';
import 'package:get_your_giphy/presentation/gif_pages/gif.screen.dart';
import 'package:get_your_giphy/presentation/home/home.screen.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
        name: Routes.HOME,
        page: () => HomeScreen(),
        binding: HomeControllerBinding()),
    GetPage(
        name: Routes.Gif,
        page: () => GifScreen(),
        binding: GifControllerBinding()),
  ];
}
