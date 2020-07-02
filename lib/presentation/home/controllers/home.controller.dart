import 'package:get/get.dart';
import 'package:get_your_giphy/domain/provider/api.dart';

class HomeController extends GetxController {
  String hello = "Hello Word";

  getGifs() async {
    Api api = Api();
    api.fetchData().then((value) {
      print(value);
    });
  }
}
