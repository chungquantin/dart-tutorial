import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final Color color;
  final String text;

  TextSection(this.color, [this.text = "Hello World"]);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: this.color),
          child: Text(
            this.text,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
