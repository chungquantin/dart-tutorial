import 'package:flutter/material.dart';
import 'package:hello_world/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  LocationDetail({Key key}) : super(key: key);
  List<TextSection> generateSection() {
    List<TextSection> textSections = [];
    for (var i = 0; i < 50; i++) {
      dynamic color = Color.fromRGBO(10 * i, 10 * i, 10 * i, 1);
      textSections.add(
          TextSection(color, "$color"));
    }
    return textSections;
  }

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
          children: this.generateSection(),
        ),
      ),
    );
  }
}
