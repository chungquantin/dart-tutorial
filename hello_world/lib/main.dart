import 'package:flutter/material.dart';
import 'package:hello_world/screens/components/MyButton/MyButton.dart';
import 'package:hello_world/screens/gray_scale/gray_scale.dart';
import 'package:hello_world/screens/location_detail/location_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
      routes: {
        '/location-detail': (context) => LocationDetail(),
        '/gray-scale': (context) => GrayScale(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

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
                onPressEvent: () => {
                  print("Location Button Clicked!")
                }),
            MyButton(
                color: Colors.blue,
                text: "Gray Scale",
                textColor: Colors.white,
                onPressEvent: () => {
                  print("Gray Scale Button Clicked!")
                })
          ],
        ),
      ),
    );
  }
}

