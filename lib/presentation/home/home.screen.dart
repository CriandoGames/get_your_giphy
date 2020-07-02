import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_your_giphy/presentation/home/controllers/home.controller.dart';
import 'package:get_your_giphy/presentation/home/widgets/futurebuilder_home_widget.dart';
import 'package:get_your_giphy/presentation/home/widgets/textfield_home_widget.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
   // controller.getGifs();

    return Scaffold(
      body: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Image.network("https://developers.giphy.com/branch/master/static/header-logo-8974b8ae658f704a5b48a2d039b8ad93.gif"),
          ),
          backgroundColor: Colors.black,
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFieldHomeWidget(
                  label: "Pesquise aqui!",
                ),
              ),
              Expanded(
                child: FutureBuilderHomeWidget(
                  
                ),
              ),
            ],
          ),
      )
    );
  }
}
