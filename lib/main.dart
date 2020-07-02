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
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        hintStyle: TextStyle(color: Colors.white),
      )),
      initialRoute: initialRoute,
      getPages: Nav.routes,
    );
  }
}
