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
                  Text(
                    _day,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: _phoneheigth * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 20,
                        width: 20,
                        child: Tab(
                          icon:
                              Image.asset("assets/images/icon_news_source.png"),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "dfasdfsdf",
                        style: TextStyle(fontSize: 20, color: Colors.purple),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 20,
                        width: 20,
                        child: Tab(
                          icon: Image.asset("assets/images/icon_news_view.png"),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "10.5k",
                        style: TextStyle(fontSize: 20, color: Colors.purple),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: _phoneheigth * 0.02,
              ),
              Text(
                  _uppernew.descriptionTH),
              SizedBox(
                height: _phoneheigth * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: _phoneheigth * 0.05,
                    width: _phonewidth * 0.5,
                    padding: EdgeInsets.only(top: 3, bottom: 3, left: 5, right: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.purple)),
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 15,
                            width: 15,
                            child: Tab(
                              icon: Image.asset("assets/images/icon_news_link.png"),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              _uppernew.link.substring(0,29),
                              style: TextStyle(color: Colors.purple),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
