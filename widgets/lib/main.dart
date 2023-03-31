import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Container(
      color: Colors.white,
      child: Center(
        child: Icon(Icons.home),
      ),
    ),
    Container(
      color: Colors.white,
      child: Center(
        child: Icon(Icons.search),
      ),
    ),
    Container(
      color: Colors.white,
      child: Center(
        child: Icon(Icons.add),
      ),
    ),
    Container(
      color: Colors.white,
      child: Center(
        child: Icon(Icons.favorite),
      ),
    ),
    Container(
      color: Colors.white,
      child: Center(
        child: Icon(Icons.person),
      ),
    ),
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
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.lightBlue,
              child: Center(
                child: Icon(Icons.info),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.lightBlueAccent,
              child: Center(
                child: Icon(Icons.new_releases),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Icon(Icons.people),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.lightGreen,
              child: Center(
                child: Icon(Icons.access_alarm),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.orange,
              child: Center(
                child: Icon(Icons.settings),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
