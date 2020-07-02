import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_your_giphy/presentation/home/controllers/home.controller.dart';

class FutureBuilderHomeWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: controller.getGifs(),
        builder: (_, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
            case ConnectionState.done:
            case ConnectionState.active:
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                    itemCount: controller.gifs.data.length,
                  itemBuilder: (_, index) {
                   
                    return GestureDetector(
                      child: Image.network(controller.gifs.data[index].images.fixedHeight.url),
                    );
                  });
              break;
            default:
              Center(
                child: CircularProgressIndicator(),
              );
          }
        });
  }
}
