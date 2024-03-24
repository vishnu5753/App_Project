import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SecondDay(),
  ));
}

class SecondDay extends StatefulWidget {
   SecondDay({Key? key}) : super(key: key);

  @override
  State<SecondDay> createState() => _SecondDayState();
}

class _SecondDayState extends State<SecondDay> {
  final _textController=TextEditingController();

  String _displayText='Text Will Be Displayed Here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
        ),
        child: Container(
          color: Colors.yellow[100],
          child: Column(
            children: [
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type Something',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  //Get Dat
                  print(_textController);
                  setState(() {
                  });
                },
                child: Text('Click Me'),
              ),
              Text('Text Will Be Displayed Here'),
            ],
          ),
        ),
      ),
    );
  }
}
