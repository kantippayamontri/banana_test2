import 'package:flutter/material.dart';
import 'package:test2/bloc/blocs/newsbloc.dart';
import 'package:test2/bloc/events/newsevent.dart';
import 'package:intl/intl.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  NewsBloc _newsBloc;

  void setstate() {
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    _newsBloc = NewsBloc(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _phoneheigth = MediaQuery.of(context).size.height;
    double _phonewidth = MediaQuery.of(context).size.width;
    _newsBloc.setstate = setstate;
    _newsBloc.add(NewsLoadingEvent());
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 0),
          height: _phoneheigth,
          width: _phonewidth,
          //color: Colors.red,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _newsBloc.upperNews != null
                    ? Container(
                        margin: EdgeInsets.only(top: _phoneheigth * 0.02),
                        padding: EdgeInsets.all(_phoneheigth * 0.02),
                        height: _phoneheigth * 0.25,
                        width: _phonewidth * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.grey.withOpacity(0.8),
                                  Colors.grey
                                ])),
                        child: LayoutBuilder(
                          builder:
                              (BuildContext ctx, BoxConstraints constraint) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: constraint.maxHeight * 0.5,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        height: constraint.maxHeight * 0.5,
                                        width: constraint.maxWidth * 0.25,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Center(
                                          child: Image(
                                            height: constraint.maxHeight * 0.45,
                                            width: constraint.maxWidth * 0.20,
                                            image: AssetImage(
                                                'assets/images/mainicon.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: constraint.maxWidth * 0.05,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(_newsBloc.upperNews.source),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            width: constraint.maxWidth * 0.6,
                                            child: Text(
                                              _newsBloc.upperNews.nameTH,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(fontSize: 22),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 5, bottom: 5),
                                  height: constraint.maxHeight * 0.4,
                                  child: Text(
                                    _newsBloc.upperNews.descriptionTH,
                                  ),
                                ),
                                Container(
                                  height: constraint.maxHeight * 0.1,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text(_newsBloc.upperdate),
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      )
                    : SizedBox(),
                SizedBox(
                  height: _phoneheigth * 0.05,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: _phoneheigth * 0.02,
                          right: _phoneheigth * 0.02),
                      child: Expanded(
                        child: Divider(
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: _phoneheigth * 0.05,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
