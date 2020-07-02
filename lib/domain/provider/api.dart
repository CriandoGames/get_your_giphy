import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:get_your_giphy/common/util/snackbar.dart';

class Api {
  Future<Map> fetchData({String search, int offset}) async {
    try {
      final response = await Dio().get(
          "https://api.giphy.com/v1/gifs/trending?api_key=R00xmiJFEGWHNkuhHi3suAnhnC9GXGaQ&limit=20&rating=g");

      print(response.data);

      return json.decode(response.data);
    } catch (e) {
      SnackbarUtil.showError(e.toString());
    }
  }
}
