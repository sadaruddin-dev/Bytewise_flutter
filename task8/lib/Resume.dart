// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task8/Admin_panel.dart';

import 'login_screen.dart';

class ResumeTemplateScreen extends StatelessWidget {
  const ResumeTemplateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 14, 85, 156),
            Color.fromARGB(255, 62, 75, 82),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Resume',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 20.0,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 30, 8, 8).withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(1, 3),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 24.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                        'assets/Profile.jpeg',
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'SADARUDDIN',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Software Engineer',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Divider(thickness: 1.0),
                  SizedBox(height: 16.0),
                  Text(
                    'CONTACT INFORMATION',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Phone: +923337070392',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Email: Sadaruddin.sc@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Divider(thickness: 1.0),
                  SizedBox(height: 32.0),
                  SizedBox(height: 32.0),
                  SizedBox(height: 20.0),
                  TextButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 54, 36, 36),
                      onPrimary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 5.0,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 30.0),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Summary',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 3, 5),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'I am a software engineer with 2 years of experience in developing high-quality Mobile applications. I am proficient in Flutter, Python, and C++, and have worked with various frameworks including Django and Flutter. I have a Bachelor of Science in Information Technology from University of Sindh.',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  SizedBox(height: 20.0),
                  TextButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 54, 36, 36),
                      onPrimary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 5.0,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 30.0),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Education',
                      style: TextStyle(
                        color: Color.fromARGB(255, 2, 14, 24),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Bachelor of Science in Information Technology',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'University of Sindh Jamshoro',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Graduated Jan 2022',
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'DAE 3 years Degree',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Board of Technical Education',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Graduated Jan 2015',
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32.0),
                  TextButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 54, 36, 36),
                      onPrimary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 5.0,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 30.0),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Skills',
                      style: TextStyle(
                        color: Color.fromARGB(255, 2, 14, 24),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 18.0),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Programming',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 18.0),
                            Text(
                              'Java, Python, C++',
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Frameworks',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 14.0),
                            Text(
                              'React, Angular',
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14.0),
                  Text(
                    'Databases',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 14.0),
                  Text(
                    'MySQL, PostgreSQL',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 54, 36, 36),
                      onPrimary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 5.0,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 30.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AdminPanel()),
                      );
                    },
                    child: const Text(
                      'Go back to admin panel',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
