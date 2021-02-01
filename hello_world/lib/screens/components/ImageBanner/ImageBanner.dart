import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  dynamic image;
  ImageBanner({@required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 400.0
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image(
        image: image, 
        fit: BoxFit.cover
      ),
    );
  }
}
 