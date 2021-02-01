import 'package:flutter/material.dart';
import 'package:hello_world/screens/components/ImageBanner/ImageBanner.dart';
import 'package:hello_world/screens/components/MyButton/MyButton.dart';
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
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                ImageBanner(image: AssetImage("assets/images/kameron.jpg")),
                Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Vietnam",
                        style: TextStyle(
                            fontFamily: 'AirbnbCerealBold',
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "1,243 Place",
                        style: TextStyle(
                            fontFamily: 'AirbnbCerealBook',
                            fontSize: 24,
                            color: Colors.white),
                      ),
                    ],
                  ),
            ),
              ],
            ),
            TextSection(Colors.white, "Modi quae similique. Quo qui quo impedit. Ab cupiditate tempora nobis omnis tempora aut. Vel sit pariatur impedit est.", "Dolorem vitae et cumque vel labore maiores qui.")
          ],
        ),
      ),
    );
  }
}
