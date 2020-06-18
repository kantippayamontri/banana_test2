import 'package:flutter/material.dart';
import 'package:test2/datamanager/datamanager.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final double _phoneheigth = MediaQuery.of(context).size.height;
    final double _phonewidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: _phonewidth * 0.05, right: _phonewidth * 0.05),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: _phoneheigth * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      height: _phoneheigth * 0.3,
                      width: _phonewidth * 0.5,
                      child: Stack(
                        children: <Widget>[
                          Card(
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Datamanager.user.image == ""
                                    ? Image(
                                        image: AssetImage(
                                            'assets/images/mainicon.png'),
                                        fit: BoxFit.cover,
                                      )
                                    : Image.network(
                                        Datamanager.user.image,
                                      ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Positioned(
                              right: 20,
                              child: Container(
                                height: _phoneheigth * 0.07,
                                width: _phoneheigth * 0.07,
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: LayoutBuilder(
                                      builder: (context, constraint) {
                                        return Center(
                                          child: Icon(
                                            Icons.camera_alt,
                                            size: constraint.maxHeight,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: _phoneheigth * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Tab(
                    icon: Image.asset(
                      "assets/images/icon_profile.png",
                      width: _phonewidth * 0.1,
                    ),
                  ),
                  SizedBox(
                    width: _phonewidth * 0.05,
                  ),
                  Text(
                    Datamanager.user.displayname,
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
              Divider(
                height: 1,
                thickness: 2,
                color: Colors.grey[200],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Tab(
                    icon: Image.asset(
                      "assets/images/icon_profile_me.png",
                      width: _phonewidth * 0.1,
                    ),
                  ),
                  SizedBox(
                    width: _phonewidth * 0.05,
                  ),
                  Text(
                    Datamanager.user.memberType,
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
              Divider(
                height: 1,
                thickness: 2,
                color: Colors.grey[200],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Tab(
                    icon: Image.asset(
                      "assets/images/icon_profile_department.png",
                      width: _phonewidth * 0.1,
                    ),
                  ),
                  SizedBox(
                    width: _phonewidth * 0.05,
                  ),
                  Text(
                    "",
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
              Divider(
                height: 1,
                thickness: 2,
                color: Colors.grey[200],
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
