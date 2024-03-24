import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inter/LoginApp_Screen/login.dart';



class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    gotoLogin();
    super.initState();
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Image.asset('Assets/Icons/whatsaaplogo.png',height: 500,),
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
  }
  Future<void>gotoLogin() async {
    await
    Future.delayed(Duration(seconds: 2,),);
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> ScreenLogin(),
    ));
  }
}
