import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inter/Counter_Numbers_Ui.dart';
import 'package:inter/Routes_NextPage_NaVigation/Routes_SecondPage.dart';



class MyFirstPage extends StatelessWidget {
  const MyFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Screen 1'),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('Screen_2');
            }, child: Text('Go To Screen 2'),)
          ],
        ),
      ),
    );
  }
}