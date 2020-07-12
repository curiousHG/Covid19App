import 'package:covidfight/wrapper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 35,
                fontFamily: "MontserratSemiBold",
                color: Colors.amberAccent,
              ),
              headline5: TextStyle(
                fontSize: 30,
                fontFamily: "MontserratLight",
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              headline4: TextStyle(
                fontSize: 15,
                fontFamily: "MontserratLight",
                fontWeight: FontWeight.bold
              ),
            ),
      ),
      home: Wrapper(),
    );
  }
}
