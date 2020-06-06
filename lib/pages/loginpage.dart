import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:test2/bloc/blocs/loginbloc.dart';
import 'package:test2/bloc/events/loginevent.dart';
import 'package:test2/bloc/states/loginstate.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginBloc _loginBloc;
  @override
  Widget build(BuildContext context) {
    _loginBloc = LoginBloc(context: this.context);
    var _phonewidth = MediaQuery.of(context).size.width;
    var _statusheight = MediaQuery.of(context).padding.top;
    var _phoneheight = MediaQuery.of(context).size.height - _statusheight;
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              width: _phonewidth,
              height: _phoneheight,
              padding: EdgeInsets.only(top: _statusheight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: _phoneheight * 0.1,
                  ),
                  Container(
                    height: _phoneheight * 0.4,
                    width: _phonewidth * 0.5,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "ยินดีต้อนรับ",
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Pridi-Bold'),
                        ),
                        SizedBox(
                          height: _phoneheight * 0.025,
                        ),
                        Image(
                          height: _phoneheight * 0.2,
                          width: _phoneheight * 0.2,
                          image: AssetImage('assets/images/mainicon.png'),
                          fit: BoxFit.cover,
                        ),
                        Divider(
                          height: 25,
                          color: Colors.black,
                          thickness: 2,
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "WORK FROM HOME",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Pridi-Bold'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      //color: Colors.red,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: _phonewidth * 0.8,
                        height: _phoneheight * 0.07,
                        child: RaisedButton(
                          color: Color.fromRGBO(59, 89, 152, 1),
                          splashColor: Colors.grey,
                          onPressed: () => _loginBloc.add(FacebookLogin()),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                    image: AssetImage(
                                        "assets/images/login_images/facebook_login.png"),
                                    height: _phoneheight * 0.03),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Sign in with Facebook',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonTheme(
                        height: _phoneheight * 0.07,
                        minWidth: _phonewidth * 0.8,
                        buttonColor: Colors.white,
                        child: RaisedButton(
                          splashColor: Colors.grey,
                          onPressed: () => _loginBloc.add(GoogleLogin()),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                    image: AssetImage(
                                        "assets/images/login_images/google_login.png"),
                                    height: _phoneheight * 0.03),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Sign in with Google',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _phoneheight * 0.05,
                      ),
                      Text(
                        'Powered by',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Image(
                        height: _phoneheight * 0.05,
                        image: AssetImage(
                            'assets/images/login_images/baak_login.png'),
                      )
                    ],
                  )
                ],
              ),
            ),
            BlocBuilder(
              bloc: _loginBloc,
              builder: (BuildContext context, state) {
                if (state is LoginLoadingState) {
                  
                  
                }

                // if(state is LoginSuccessState){
                //   return Center(child: ,)
                // }

                return SizedBox();
              },
            )
          ],
        ),
      ),
    );
  }
}
