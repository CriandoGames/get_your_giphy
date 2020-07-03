import 'package:get/get.dart';
import 'package:get_your_giphy/presentation/gif_pages/controllers/gif.controller.dart';

class GifControllerBinding extends Bindings {
  @override
  dependencies() {
    Get.lazyPut<GifController>(() => GifController());
  }
}
