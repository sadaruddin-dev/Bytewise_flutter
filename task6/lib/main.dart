import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    LoginWidget(),
    SettingsWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo.png'))),
            padding: EdgeInsets.only(
              right: 35,
              left: 35,
            ),
            // color: Colors.lightBlue,
            child: Center(
                // child: Icon(Icons.info),
                ),
          ),
        ),
        // SizedBox(height: 12),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(
              right: 35,
              left: 35,
            ),
            color: Color.fromARGB(255, 140, 200, 240),
            child: Center(
              child: Icon(Icons.new_releases),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(
              right: 35,
              left: 35,
            ),
            color: Colors.blue,
            child: Center(
              child: Icon(Icons.people),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(
              right: 35,
              left: 35,
            ),
            color: Colors.lightGreen,
            child: Center(
              child: Icon(Icons.access_alarm),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(
              right: 35,
              left: 35,
            ),
            color: Colors.orange,
            child: Center(
              child: Icon(Icons.settings),
            ),
          ),
        ),
        SizedBox(height: 12),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginWidget()),
            );
          },
          child: Text('Login'),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignupPage(),
                ));
          },
          child: Text('Sign up'),
        ),
      ],
    );
  }
}

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.jpg'),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {},
                  child: Text('Forgot password?'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            trailing: Switch(
              value: false,
              onChanged: (value) {},
            ),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            trailing: DropdownButton<String>(
              value: 'English',
              onChanged: (value) {},
              items: <String>['English', 'Spanish', 'French', 'German']
                  .map<DropdownMenuItem<String>>(
                      (value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ))
                  .toList(),
            ),
          ),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text('Theme'),
            trailing: DropdownButton<String>(
              value: 'Light',
              onChanged: (value) {},
              items: <String>['Light', 'Dark']
                  .map<DropdownMenuItem<String>>(
                      (value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
