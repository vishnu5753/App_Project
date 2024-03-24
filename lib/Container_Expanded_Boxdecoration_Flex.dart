import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstDay(),
  ));
}

class FirstDay extends StatelessWidget {
  FirstDay({super.key});

  String name = "My APPss";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      //appBar: AppBar(),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              color: Colors.orange,
              child: Column(
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          print("TextButto Clicked");
                        },
                        child: Text("Click Me"),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print("Elevated Button Clicked");
                      },
                      child: Text("Click Me")),
                  IconButton(
                    onPressed: () {
                      print("Icon Button Clicked");
                    },
                    icon: Icon(Icons.mic),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.deepPurpleAccent,width: 10),
              ),
              child: Center(child: Text("Simple Text")),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          print("TextButto Clicked");
                        },
                        child: Text("Click Me"),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print("Elevated Button Clicked");
                      },
                      child: Text("Click Me")),
                  IconButton(
                    onPressed: () {
                      print("Icon Button Clicked");
                    },
                    icon: Icon(Icons.mic),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
