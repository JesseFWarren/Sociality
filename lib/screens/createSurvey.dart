import 'package:app/main.dart';
import 'package:app/screens/SearchPage.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:firebase_storage/firebase_storage.dart';


class CreateSurvey extends StatefulWidget{
  const CreateSurvey({Key? key}) : super(key: key);
  @override
  State<CreateSurvey> createState() => _CreateSurveyState();
}

class _CreateSurveyState extends State<CreateSurvey> {
  int currentIndex = 0;
  String value = "";
  String value2 = "";
  String value3 = "";
  int arrayIndex = 0;
  final _textController = TextEditingController();
  List<String> valueArray = [];
  //var twoDList = List.generate(num, (i) => List(col), growable: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text('Sociality'),
          ),
          //body
          body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // The user will type something here
              TextField(
              cursorColor: Colors.black,
              style: TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.black),
                hintText: "Enter the title of the survey..",
                filled: true,
                fillColor: Colors.blueAccent,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50)
                ),
              ),
              onChanged: (text){
                value = text;
                valueArray[arrayIndex] = value;
                arrayIndex++;
              },
            ),
            SizedBox(
               height: 30,
                          ),

             TextField(
              cursorColor: Colors.black,
              style: TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.black),
                hintText: "Enter the scope of the survey..",
                filled: true,
                fillColor: Colors.blueAccent,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50)
                ),
              ),
              onChanged: (text){
                value2 = text;
                valueArray[arrayIndex] = value2;
                arrayIndex++;
              },
            ),
            SizedBox(
              height: 30,
                          ),
             TextField(
              cursorColor: Colors.black,
              style: TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.black),
                hintText: "Enter the type of the survey..",
                filled: true,
                fillColor: Colors.blueAccent,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50)
                ),
              ),
              onChanged: (text){
                value3 = text;
                valueArray[arrayIndex] = value3;
                arrayIndex++;
              },
            ),
            ]
          )
          ),

          floatingActionButton: FloatingActionButton.extended(
            
            icon: Icon(Icons.add),
            label: Text('Create Survey'),
            onPressed: (){
              Navigator.push(
               context,
               MaterialPageRoute(
                builder: (context) => MyApp(valueArray: [],),
                ),
              );
            }
          ),
          

    );
  }
}
