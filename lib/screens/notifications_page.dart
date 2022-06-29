import 'package:app/main.dart';
import 'package:app/screens/SearchPage.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:firebase_storage/firebase_storage.dart';

class Notifications extends StatefulWidget{
  const Notifications({Key? key}) : super(key: key);
  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
          body: ListView.builder(
            itemBuilder: (_, index) {
              return Container(
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                width: 500,
                height: 100,
              );
            },
          ),


          

    );
  }
}