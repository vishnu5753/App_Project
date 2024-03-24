import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key ? key}):super(key:key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}
class _ScreenHomeState extends State<ScreenHome> {
  int _counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DisplayText(CounterText: _counter.toString(),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print(_counter);

          setState(() {
            _counter=_counter+1;
          });

        },
      ),
    );
  }
}
class DisplayText extends StatelessWidget {
  final String  CounterText;

  const DisplayText({Key ? key,required this.CounterText});


  @override
  Widget build(BuildContext context) {
    return Text(CounterText);
  }
}
