import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  Color _color;
  String _text;

  TextSection(Color color, [String text = "Hello World"]){
    this._color = color;
    this._text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: this._color),
          child: Text(
            this._text,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
