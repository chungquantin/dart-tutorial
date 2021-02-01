import 'package:flutter/material.dart';
import 'package:hello_world/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  LocationDetail({Key key}) : super(key: key);

  List<TextSection> textSecionts = [
    TextSection(),
    TextSection(),
    TextSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: textSecionts,
      ),
    );
  }
}
