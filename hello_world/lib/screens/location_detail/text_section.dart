import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final Color color;
  final String body;
  final String title;

  TextSection(this.color, this.body, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          decoration: BoxDecoration(color: this.color),
          child: Text(
            this.body,
            style: Theme.of(context).textTheme.bodyText2
          )),
    );
  }
}
