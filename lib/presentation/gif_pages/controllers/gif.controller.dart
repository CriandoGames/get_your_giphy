import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';

class GifController extends GetxController {
  String title;
  String url;

  void share() {
    Share.share(url);
  }

  GifController({@required Map<String, dynamic> screenArgs}) {
    this.title = screenArgs['title'];
    this.url = screenArgs['url'];
  }
}
