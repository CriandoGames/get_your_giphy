import 'package:get/get.dart';
import 'package:get_your_giphy/presentation/home/controllers/home.controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
