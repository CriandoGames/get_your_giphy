import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_your_giphy/infrastructure/navigation/routes.dart';
import 'package:get_your_giphy/presentation/home/controllers/home.controller.dart';
import 'package:get_your_giphy/presentation/home/widgets/card_home_widget.dart';

class FutureBuilderHomeWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      builder: (_) {
        return FutureBuilder(
            future: controller.getGifs(controller.seach.value),
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
                      itemCount: controller.gifs == null
                          ? 0
                          : controller.getCount(controller.gifs.data),
                      itemBuilder: (_, index) {
                        if (controller.seach.value.isEmpty ||
                            controller.seach.value == "" ||
                            index < controller.gifs.data.length) {
                          return GestureDetector(
                            child: Image.network(
                              controller
                                  .gifs.data[index].images.fixedHeight.url,
                              height: Get.height * 0.2,
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              Get.toNamed(Routes.Gif, arguments: {
                                'title': controller.gifs.data[index].title,
                                'url': controller
                                    .gifs.data[index].images.fixedHeight.url
                              });
                            },
                          );
                        } else {
                          return FillCard(
                            onTap: controller.addOffSet,
                          );
                        }
                      });
                  break;
                default:
                  Center(
                    child: CircularProgressIndicator(),
                  );
              }
            });
      },
    );
  }
}
