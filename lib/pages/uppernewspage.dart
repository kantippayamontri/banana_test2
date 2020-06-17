import 'package:flutter/material.dart';
import 'package:test2/model/uppernews.dart';

class UpperNewsPage extends StatefulWidget {
  @override
  _UpperNewsPageState createState() => _UpperNewsPageState();
}

class _UpperNewsPageState extends State<UpperNewsPage> {
  @override
  Widget build(BuildContext context) {
    final double _phoneheigth = MediaQuery.of(context).size.height;
    final double _phonewidth = MediaQuery.of(context).size.width;
    final double appbar_height = AppBar().preferredSize.height;
    final UpperNews _uppernew =
        (ModalRoute.of(context).settings.arguments as Map)["uppernews"];
    final String _day =
        (ModalRoute.of(context).settings.arguments as Map)["upperday"];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image(
                height: appbar_height * 0.6,
                width: appbar_height * 0.6,
                image: AssetImage('assets/images/back_icon.png'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: _phonewidth * 0.7,
              child: Text(
                _uppernew.nameTH,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: _phoneheigth * 0.02,
          left: _phonewidth * 0.05,
          right: _phonewidth * 0.05,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: _phoneheigth * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.yellow[100],
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/mainicon.png',
                        ),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: _phoneheigth * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(_day),
                ],
              ),
              SizedBox(
                height: _phoneheigth * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Text("dfasdfsdf"), Text("rrrrrrrrrr")],
              ),
              SizedBox(
                height: _phoneheigth * 0.01,
              ),
              Text(
                  "sdfsdfadfasdfasdfsadfsdfasdfsdfasdfasdfasdfsadfsadfasdfsdsdfsdfadfasdfasdfsadfsdfasdfsdfasdfasdfasdfsadfsadfasdfsd"),
              SizedBox(
                height: _phoneheigth * 0.04,
              ),
              Text("tytytytyttytytytytytytyty")
            ],
          ),
        ),
      ),
    );
  }
}
