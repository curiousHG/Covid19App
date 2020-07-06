import "package:flutter/material.dart";
import 'hospitaldata.dart';

class HospitalLists extends StatefulWidget {
  @override
  _HospitalListsState createState() => _HospitalListsState();
}

class _HospitalListsState extends State<HospitalLists> {
  List <Hospital> _Hospitals = hospitals;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospitals'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: _Hospitals.map((H) => new ListTile(
          leading: Icon(Icons.local_hospital),
          title: Text(H.name),
          subtitle: Text(H.location),
          trailing: Text('No of beds: ${H.beds}'),

        )).toList()
      ),
    );
  }
}
