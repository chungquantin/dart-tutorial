import 'package:flutter/material.dart';
import 'package:hello_world/screens/components/MyButton/MyButton.dart';
import 'package:hello_world/screens/gray_scale/gray_scale.dart';
import 'package:hello_world/screens/location_detail/location_detail.dart';

void main() {
  runApp(MyApp());
}

enum Routes { locationDetail, grayScale, home }

extension RouteExtension on Routes {
  String get value {
    switch (this) {
      case Routes.home:
        return "/";
      case Routes.locationDetail:
        return "/location-detail";
      case Routes.grayScale:
        return "/gray-scale";
      default:
        return "";
    }
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            headline6: TextStyle(
              fontSize: 25
            ),
          )
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 20,
            fontFamily: "Montserrat"
          )
        )
      ),
      home: HomeScreen(),
      routes: {
        // Routes.home.value: (context) => HomeScreen(),
        Routes.locationDetail.value: (context) => LocationDetail(),
        Routes.grayScale.value: (context) => GrayScale(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
                color: Colors.red,
                text: "Location",
                textColor: Colors.white,
                onPressEvent: () =>
                    Navigator.pushNamed(context, Routes.locationDetail.value)),
            MyButton(
                color: Colors.blue,
                text: "Gray Scale",
                textColor: Colors.white,
                onPressEvent: () =>
                    Navigator.pushNamed(context, Routes.grayScale.value))
          ],
        ),
      ),
    );
  }
}
