
import 'package:flutter/material.dart';
import 'package:login/screens/login_screen.dart';
import 'package:login/screens/welcome_screen.dart';
import 'package:login/constants.dart';



class RegistrationScreen extends StatefulWidget {

  static const String id='registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
              height: 48.0,
            ),
            CustomInputBox(title: 'Enter your email',pass: false,),
            SizedBox(
              height: 8.0,
            ),
            CustomInputBox(title: 'Enter your password',pass: true,),
            SizedBox(
              height: 24.0,
            ),
            customButton(title: 'Register',clour: Colors.lightBlue,onPressed: (){
              Navigator.pushNamed(context, LoginScreen.id);
            },),
          ],
        ),
      ),
    );
  }
}
