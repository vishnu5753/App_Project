import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inter/LoginApp_Screen/Splash.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Sample",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenSplash(),
    );
  }
}
