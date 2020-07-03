import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GifScreen extends GetView {
  final String title;
  final String url;
  GifScreen({@required this.title, @required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(url),
      ),
    );
  }
}
