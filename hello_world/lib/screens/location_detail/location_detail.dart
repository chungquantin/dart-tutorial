import 'package:flutter/material.dart';
import 'package:hello_world/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  LocationDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextSection(Colors.red, "Child 1"),
            TextSection(Colors.blue, "Child 2"),
            TextSection(Colors.green, "Child 3"),
          ],
        ),
      ),
    );
  }
}
