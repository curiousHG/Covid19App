import 'package:covidfight/screens/CovidTest.dart';
import 'package:covidfight/screens/HospitalLists.dart';
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
    body:Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          RaisedButton(
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CovidTest())
              );
            } ,
            color: Colors.blue,
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
          SizedBox(height: 20),
          RaisedButton(
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HospitalLists())
              );
            },
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Find a hospital',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                ),
              ),
            ),

          )
        ],
      ),
    ));
  }
}
