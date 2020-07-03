import 'package:flutter/material.dart';

class FillCard extends StatelessWidget {
  final Function onTap;

  FillCard({@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.navigate_next,
              color: Colors.white,
              size: 70,
            ),
            Text(
              "proximo",
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
