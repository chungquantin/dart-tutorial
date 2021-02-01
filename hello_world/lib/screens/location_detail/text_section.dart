import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  const TextSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromRGBO(38, 38, 38, 1)
          ),
          child: Text(
              'child 2', 
              style: TextStyle(
                color: Colors.white),
                )
        ),
    );
  }
}