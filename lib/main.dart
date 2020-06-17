import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2/datamanager/datamanager.dart';
import 'package:test2/datamanager/routes.dart';
import 'package:test2/pages/loginpage.dart';
import 'package:test2/pages/tabscreen.dart';
import 'package:test2/pages/uppernewspage.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      title: "Work From Home",
      routes: {
        Routes.mainpage: (_) => LoginPage(),
        Routes.loginpage: (_) => LoginPage(),
        Routes.tabscreenpage: (_) => TabScreen(),
        Routes.uppernewspage: (_) => UpperNewsPage()
      },
    );
  }
}
