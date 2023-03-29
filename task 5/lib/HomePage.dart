// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/login2.jpg'), fit: BoxFit.cover)),
          )
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.deepPurple,
          color: Colors.blueGrey,
          animationDuration: Duration(milliseconds: 200),
          items: [
            Icon(
              Icons.home,
            ),
            Icon(Icons.login),
            Icon(Icons.app_registration),
          ]),
    );
  }
}
