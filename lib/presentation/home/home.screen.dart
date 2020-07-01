import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_your_giphy/presentation/home/controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(controller.hello),
      ),
    );
  }
}
