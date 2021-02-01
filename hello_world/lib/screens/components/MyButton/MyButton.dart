import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  final Function onPressEvent;

  MyButton(
      {@required this.color,
      @required this.text,
      @required this.textColor,
      @required this.onPressEvent});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: RaisedButton(
          onPressed: this.onPressEvent,
          textColor: this.textColor,
          color: this.color,
          child: Text(this.text)),
    );
  }
}
