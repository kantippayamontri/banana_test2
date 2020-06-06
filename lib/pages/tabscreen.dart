import 'package:flutter/material.dart';
import 'package:test2/datamanager/datamanager.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Tabscreen Page ${Datamanager.user.email}",
          style: TextStyle(fontSize: 86),
        ),
      ),
    );
  }
}
