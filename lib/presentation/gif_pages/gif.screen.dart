import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_your_giphy/presentation/gif_pages/controllers/gif.controller.dart';

class GifScreen extends GetView<GifController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: controller.share,
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(controller.url)
      ),
    );
  }
}
