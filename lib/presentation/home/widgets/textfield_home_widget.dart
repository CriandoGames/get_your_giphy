import 'package:flutter/material.dart';

class TextFieldHomeWidget extends StatelessWidget {
  final String label;
  final Function onChange;

  TextFieldHomeWidget({this.label, this.onChange});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          //borderSide: BorderSide(color: Theme.of(context).hintColor, width: 1.0)
        ),
      ),
      style: TextStyle(color: Colors.white, fontSize: 18),
      textAlign: TextAlign.center,
      onChanged: onChange,
    );
  }
}
