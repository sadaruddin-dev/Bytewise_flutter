import 'package:flutter/material.dart';
import 'package:task8/login_screen.dart';
import 'package:task8/signup_screen.dart';
import 'package:task8/Admin_panel.dart';

import 'Resume.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 8',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/admin_panel': (context) => AdminPanel(),
        '/Resume': (context) => ResumeTemplateScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      },
    );
  }
}
