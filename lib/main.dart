import 'package:flutter/material.dart';
import 'package:login/screens/welcome_screen.dart';
import 'package:login/screens/login_screen.dart';
import 'package:login/screens/registration_screen.dart';
import 'package:login/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(

      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context)=>WelcomeScreen(),
        LoginScreen.id: (context)=>LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
