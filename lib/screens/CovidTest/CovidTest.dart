import 'package:flutter/material.dart';

class CovidTest extends StatefulWidget {
  @override
  _CovidTestState createState() => _CovidTestState();
}

class _CovidTestState extends State<CovidTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "hehaw",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Text(
        "Hiha",
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
