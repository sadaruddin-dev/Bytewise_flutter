import 'package:flutter/material.dart';
import 'package:task8/models/user.dart';
import 'package:task8/utils/database_helper.dart';

class AdminPanel extends StatefulWidget {
  @override
  _AdminPanelState createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  late DatabaseHelper _databaseHelper;
  late List<User> _users;

  @override
  void initState() {
    super.initState();
    _databaseHelper = DatabaseHelper.instance;
    _refreshUserList();
  }

  void _refreshUserList() async {
    List<User> x = await _databaseHelper.getUsers();
    setState(() {
      _users = x;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Panel'),
      ),
      body: ListView.builder(
        itemCount: _users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_users[index].firstName!),
            subtitle: Text(_users[index].email!),
          );
        },
      ),
    );
  }
}
