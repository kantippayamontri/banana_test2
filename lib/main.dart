import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2/datamanager/routes.dart';
import 'package:test2/pages/loginpage.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Work From Home",
      routes: {
        Routes.mainpage : (_) => LoginPage(),
        Routes.loginpage : (_) => LoginPage(),
      },
    );
  }
}