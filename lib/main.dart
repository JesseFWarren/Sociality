import 'package:app/screens/SearchPage.dart';
import 'package:app/screens/createSurvey.dart';
import 'package:app/screens/home.dart';
import 'package:app/screens/notifications_page.dart';
import 'package:app/screens/settings_page.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:firebase_storage/firebase_storage.dart';


void main() {
  runApp( MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF769CFF)),
      home: MyApp(valueArray: [],)));
}

class MyApp extends StatefulWidget {

  List<String> valueArray = [];
  MyApp({Key? key, required this.valueArray}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState(valueArray);
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final screens = [
    Home(),
    SearchPage(),
    Notifications(),
    Settings(),
    CreateSurvey(),
  ];
  /*
  static const storageRef = FirebaseStorage.instance.ref();
  Reference imagesRef = storageRef.child("images");
  final fileName = 'space.jpg';
  final spaceRef = imagesRef.child(fileName);
  final path = spaceRef.fullPath;
  final name = spaceRef.name;
  imagesRef = spaceRef.parent;
  */

  _MyAppState(List<String> valueArray);

  //rebuilds UI when data changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text('Sociality'),
          ),
          body: screens[currentIndex],

          floatingActionButton: FloatingActionButton.extended(
            
            icon: Icon(Icons.add),
            label: Text('New Survey'),
            onPressed: (){
              Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const CreateSurvey()),
              );
            }
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xFF97E5F6),
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.white70,
            showUnselectedLabels: true,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          )

         );
          
      
    
  }
}




