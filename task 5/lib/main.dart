import 'package:flutter/material.dart';
import 'package:login_page/HomePage.dart';
import 'package:login_page/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'HomePage',
    routes: {
      'HomePage': (context) => HomePage()
      // 'MyLogin': (context) => MyLogin()
    },
  ));
}
