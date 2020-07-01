import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_your_giphy/infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: Nav.routes,
    );
  }
}
