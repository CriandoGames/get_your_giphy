import 'package:get/get.dart';
import 'package:get_your_giphy/common/util/snackbar.dart';
import 'package:get_your_giphy/domain/model/model_gifs.dart';
import 'package:get_your_giphy/domain/provider/api.dart';

class HomeController extends GetxController {
  String hello = "Hello Word";

  ModelGifs gifs;

  getGifs() async {
    Api api = Api();
    final response = await api.fetchData();

    if (response == null) {
      SnackbarUtil.showWarning("Recebeu nulo");
      return;
    } else {
      gifs = response;
      return response;
    }
  }
}
