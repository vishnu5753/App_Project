
import 'package:flutter/material.dart';
import 'package:inter/Counter_Numbers_Ui.dart';

void main() {
  runApp(MaterialApp(
    home: MyAPP(),
  ));
}

class MyAPP extends StatelessWidget {
  const MyAPP({Key ? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData(
       primarySwatch: Colors.purple,
     ),
      home:ScreenHome(),
    );
  }
}
