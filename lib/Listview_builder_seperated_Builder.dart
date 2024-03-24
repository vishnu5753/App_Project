import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewSample(),
  ));
}

class ListViewSample extends StatelessWidget {
  const ListViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Sample Project'),
      ),
        body: SafeArea(
        child: ListView.separated(
            itemBuilder: (ctx, index){
              return  Text('Text $index');
            },
            separatorBuilder: (ctx, index) {
              return Divider(height: 15,color: Colors.black,thickness: 0.6,);
            },
            itemCount: 50),
        ),

    );
  }
}
