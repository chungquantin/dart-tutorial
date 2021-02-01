import 'package:flutter/material.dart';
import 'package:hello_world/screens/components/ImageBanner/ImageBanner.dart';
import 'package:hello_world/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
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
            ImageBanner(image: NetworkImage("https://images.unsplash.com/photo-1612138561512-50c8260a6ed8?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60")),
            ImageBanner(image: AssetImage("assets/images/kameron.jpg")),
            TextSection(Colors.red, "Child 1"),
            TextSection(Colors.blue, "Child 2"),
            TextSection(Colors.green, "Child 3"),
          ],
        ),
      ),
    );
  }
}
