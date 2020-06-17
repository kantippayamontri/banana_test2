import 'package:flutter/material.dart';
import 'package:test2/datamanager/datamanager.dart';
import 'package:test2/pages/newspage.dart';
import 'package:test2/pages/profilepage.dart';
import 'package:test2/pages/workpage.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _currentIndex = 0;
  final tabs = [NewsPage(), WorkPage(), ProfilePage()];
  AppBar _appbar = AppBar();
  @override
  Widget build(BuildContext context) {
    final double appbar_height = AppBar().preferredSize.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              height: appbar_height * 0.6,
              width: appbar_height * 0.6,
              image: AssetImage('assets/images/mainicon.png'),
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 1,
              height: appbar_height * 0.6,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Text(
                      "Work",
                      style: TextStyle(fontSize: 18),
                    )),
                FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Text(
                      "From Home",
                      style: TextStyle(fontSize: 12),
                    ))
              ],
            ),
          ],
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 100,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
            title: Text(""),
            backgroundColor: Colors.purple,
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.hotel),
              backgroundColor: Colors.purple),
          BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.people),
              backgroundColor: Colors.purple),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
