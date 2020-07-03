import 'package:dio/dio.dart';
import 'package:get_your_giphy/common/util/snackbar.dart';
import 'package:get_your_giphy/domain/model/model_gifs.dart';

class Api {
  Future<ModelGifs> fetchData({String search, int offset}) async {
    try {
      if (search == null || search == "") {
        final response = await Dio().get(
            "https://api.giphy.com/v1/gifs/trending?api_key=R00xmiJFEGWHNkuhHi3suAnhnC9GXGaQ&limit=20&rating=g");

        return ModelGifs.fromJson(response.data);
      }else{
         final response = await Dio().get(
            "https://api.giphy.com/v1/gifs/search?api_key=R00xmiJFEGWHNkuhHi3suAnhnC9GXGaQ&q=$search&limit=19&offset=$offset&rating=g&lang=en");

        return ModelGifs.fromJson(response.data);
      }
    } catch (e) {
      SnackbarUtil.showError(e.toString());
      return null;
    }
  }
}
