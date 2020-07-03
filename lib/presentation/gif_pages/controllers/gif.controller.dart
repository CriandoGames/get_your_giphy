import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GifController extends GetxController {
  String title;
  String url;
  GifController({@required Map<String, dynamic> screenArgs}) {
    this.title = screenArgs['title'];
    this.url = screenArgs['url'];
  }
}
