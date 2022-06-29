import 'package:app/main.dart';
import 'package:app/screens/SearchPage.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:firebase_storage/firebase_storage.dart';

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

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
          body: ListView.builder(
            itemBuilder: (valueArray, index) {
              return Container(
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                width: 500,
                height: 250,
              );
            },
          ),


          

    );
  }
}