import 'package:covidfight/screens/CovidTest/CovidTest.dart';
import 'package:covidfight/screens/hospitallist/HospitalLists.dart';
import 'package:covidfight/screens/statistics/Statistics.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "LETS FIGHT COVID",
            style: TextStyle(
                color:Colors.red,
                fontSize: 35
            )
        ),
          backgroundColor: Colors.black,
          centerTitle: true),
    body: GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: RaisedButton(
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CovidTest())
              );
              },
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Take a Test',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                  ),
                ),
              ),
            ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: RaisedButton(
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HospitalLists())
              );
              },
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
            ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Find a Hospital',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                  ),
                ),
              ),
            ),
        ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: RaisedButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Statistics())
                );
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Statistics',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                  ),
                ),
              ),
            ),
          ),
      ],
    ),
    );
  }
}
