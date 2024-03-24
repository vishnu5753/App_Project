import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inter/Counter_Numbers_Ui.dart';
import 'package:inter/Routes_NextPage_NaVigation/Routes_PageFirst_OR_Navigation.dart';
import 'package:inter/Routes_NextPage_NaVigation/Routes_SecondPage.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFirstPage(),
      routes: {
        'Screen_1':(ctx){
          return ScreenHome();
        },
        'Screen_2':(ctx){
          return MySecondPage();
        }
      },
    );
  }
}
