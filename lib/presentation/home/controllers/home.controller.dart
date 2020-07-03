import 'package:get/get.dart';
import 'package:get_your_giphy/common/util/snackbar.dart';
import 'package:get_your_giphy/domain/model/model_gifs.dart';
import 'package:get_your_giphy/domain/provider/api.dart';

class HomeController extends GetxController {
  var seach = "".obs;
  var offSet = 0.obs;

  ModelGifs gifs;

  getGifs(String value) async {
    Api api = Api();
    final response = await api.fetchData(search: value, offset: offSet.value);

    if (response == null) {
      SnackbarUtil.showWarning("Recebeu nulo");
      return;
    } else {
      gifs = response;
      return response;
    }
  }

  void seachGifs(String value) {
    seach.value = value;
    offSet.value = 0;
  }

  int getCount(List data) {
    if (seach.value.isEmpty || seach.value == "") {
      return data.length;
    } else {
      return data.length + 1;
    }
  }

  addOffSet() {
    offSet.value += 19;
    print(offSet.value);
  }
}
