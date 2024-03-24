import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  bool _isDatamatched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Username'),
              validator: (_){
                if (_isDatamatched){
                  return null;
                }else{
                  return 'Error';
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
              validator: (_){
                if(_isDatamatched){
                  return null;
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                    visible: !_isDatamatched,
                    child: Text(
                      'Username Password Doesnot Match',
                      style: TextStyle(color: Colors.red),
                    )),
              ],
            ),
            ElevatedButton.icon(
              onPressed: () {
                checkLogin(context);
              },
              icon: const Icon(Icons.check),
              label: const Text('Login'),
            ),
          ],
        ),
      ),
    ));
  }

  void checkLogin(BuildContext ctx) {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == _password) {
      //GoTo Home
    } else {
      final _errorMessage = 'Username Password Doesnot Match';

      //Snackbar

      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          margin: EdgeInsets.all(10),
          content: Text(_errorMessage),
          duration: Duration(seconds: 2),
        ),
      );

      //Alert Dialog

      showDialog(
          context: ctx,
          builder: (ctx1) {
            return AlertDialog(
              title: Text('Error'),
              content: Text(_errorMessage),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx1).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            );
          });

      //Show Text
      setState(() {
        _isDatamatched = false;
      });
    }
  }
}
