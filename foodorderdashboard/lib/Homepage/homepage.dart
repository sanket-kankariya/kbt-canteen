
import 'package:flutter/material.dart';
import 'column1/column1.dart';
import 'column2.dart';

class Homepage extends StatefulWidget {

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isLoading = false;
  String selectedUser = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('KBT Canteen, Nashik'),),
            body: Row(
              children: [
                // 1st Column
                Column1(
                  changeSelectedUser: changeSelectedUser,
                ),
                // 2nd Column
                Column2(
                  selectedUser: selectedUser,
                )
              ],
            ),
          );

 
}
 void changeSelectedUser(String newUser) {
    setState(() {
      selectedUser = newUser;
    });
  }
}
