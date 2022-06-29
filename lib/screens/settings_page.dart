import 'package:app/main.dart';
import 'package:app/screens/SearchPage.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Settings extends StatefulWidget{
  const Settings({Key? key}) : super(key: key);
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text('Sociality'),
          ),
          */
          //body
          body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    new RaisedButton(
      child: new Text("Log Out"),
      color: Colors.red,
      onPressed: (){},
    ),
    Container(height: 20.0),//SizedBox(height: 20.0),
  ],
),


          

    );
  }
}