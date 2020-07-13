import "package:flutter/material.dart";
import 'hospitaldata.dart';

class HospitalLists extends StatefulWidget {
  @override
  _HospitalListsState createState() => _HospitalListsState();
}

class _HospitalListsState extends State<HospitalLists> {
  List <Hospital> _hospitals = hospitals;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospitals',style: Theme.of(context).textTheme.headline5,),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: _hospitals.map((H) => new ListTile(
          leading: Icon(Icons.local_hospital),
          title: Text(H.name, style: Theme.of(context).textTheme.headline4,),
          subtitle: Text(H.location, style: Theme.of(context).textTheme.headline4,),
          trailing: Text('No of beds: ${H.beds}', style: Theme.of(context).textTheme.headline4,),

        )).toList()
      ),
    );
  }
}
