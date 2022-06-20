import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:login/main.dart';
import 'package:login/screens/login_screen.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:login/constants.dart';

class WelcomeScreen extends StatefulWidget{

  static const String id='welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}


class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {

  AnimationController? controller;
  Animation? animation;
  @override
  void initState(){
    super.initState();
    controller=AnimationController(
        duration: Duration(seconds: 5),
        vsync: this
    );

    animation=CurvedAnimation(parent: controller!, curve: Curves.bounceInOut);
    controller?.forward();

    controller?.addListener(() {
      setState(() {

      });
      print(animation?.value*100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'Logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: animation?.value*100,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text:['Flash Chat'],
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            customButton(title: 'Log In',clour: Colors.lightBlue,onPressed: (){
              Navigator.pushNamed(context, LoginScreen.id);
            },),
            customButton(title: 'Register',clour: Colors.blue,onPressed: (){
              Navigator.pushNamed(context, RegistrationScreen.id);
            },),
          ],
        ),
      ),
    );
  }
}

