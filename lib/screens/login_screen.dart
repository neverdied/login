import 'package:flutter/material.dart';
import 'package:login/screens/chat_screen.dart';
import 'package:login/screens/welcome_screen.dart';
import 'package:login/constants.dart';

class LoginScreen extends StatefulWidget {

  static const String id='login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Hero(
              tag: 'Logo',
              child: Container(
                height: 100.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            CustomInputBox(title: 'Enter your email',pass: false,),
            SizedBox(
              height: 8.0,
            ),
            CustomInputBox(title: 'Enter your password',pass: true,),
            SizedBox(
              height: 24.0,
            ),
            customButton(title: 'Log In',clour: Colors.lightBlue,onPressed: (){
              Navigator.pushNamed(context, ChatScreen.id);
            },),
          ],
        ),
      ),
    );
  }
}

