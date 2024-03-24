import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: WhatsappUi(),
  ));
}

class WhatsappUi extends StatelessWidget {
  const WhatsappUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp'),
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text('PERSON $index'),
                subtitle: Text('Message $index'),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green[400],
                  backgroundImage: AssetImage(
                    "Assets/Icons/tovi.jpg",
                  ),
                ),
                trailing: Text('1$index:00 PM'),
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: 50),
      ),
    );
  }
}
