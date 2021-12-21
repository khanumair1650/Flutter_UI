import 'package:flutter/material.dart';
import 'package:flutter_ui/Greet.dart';
import 'package:flutter_ui/index.dart';
import 'package:flutter_ui/login.dart';
import 'package:flutter_ui/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'initial',
    routes: {
      'login' : (context)=>const LoginPage(),
      'register' : (context)=>const RegisterPage(),
      'greeting' : (context)=>const Greet(),
      'initial' : (context)=>const Initial(),


    },
  ));
}
