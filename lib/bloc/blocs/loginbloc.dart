import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:test2/bloc/events/loginevent.dart';
import 'package:test2/bloc/states/loginstate.dart';
import 'package:http/http.dart' as http;
import 'package:test2/datamanager/datamanager.dart';
import 'package:test2/datamanager/routes.dart';
import 'dart:convert';

import 'package:test2/model/user.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  BuildContext context;
  LoginBloc({@required this.context});

  @override
  // TODO: implement initialState
  get initialState => LoginStartState();

  ProgressDialog loadingdialog;

  Future<String> getUserLogin() async {
    http.Response response =
        await http.post("https://b-gib.banana.co.th/wfh/v1r/login",
            headers: {"Accept": "application/json"},
            body: json.encode({
              'accessToken': 'fTj9pAjhHtDsAcSuRU0B7qWJRKE4dxd0',
              'email': 'gibson@gmail.co',
              'loginType': 'F',
              'profileName': 'g'
            }));
    if (response.statusCode == 200) {
      print("login success!!!");
      var jsonData = json.decode(response.body);
      User users = User(
        age: jsonData["data"]['age'],
        birthDate: jsonData["data"]['birthDate'],
        blood: jsonData["data"]['blood'],
        city: jsonData["data"]['city'],
        displayname: jsonData["data"]['displayname'],
        email: jsonData["data"]['email'],
        gender: jsonData["data"]['gender'],
        height: jsonData["data"]['height'],
        image: jsonData["data"]['image'],
        medical: jsonData["data"]['medical'],
        medicalEtc: jsonData["data"]['medicalEtc'],
        memberId: jsonData["data"]['memberId'],
        memberType: jsonData["data"]['memberType'],
        phone: jsonData["data"]['phone'],
        phoneCode: jsonData["data"]['phoneCode'],
        phoneCountry: jsonData["data"]['phoneCountry'],
        sportEtc: jsonData["data"]['sportEtc'],
        sportFav: jsonData["data"]['sportFav'],
        sportFreq: jsonData["data"]['sportFreq'],
        sportLocation: jsonData["data"]['sportLocation'],
        token: jsonData["data"]['token'],
        weight: jsonData["data"]['weight'],
      );
      //print(jsonData["status"]);
      Datamanager.user = users;
      //print(Datamanager.user.email);
      Navigator.of(context).pop();
      Navigator.pushNamed(context, Routes.tabscreenpage);
    } else {
      Navigator.of(context).pop();
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Fail Login"),
              actions: <Widget>[
                FlatButton(
                  child: Text("ok"),
                  onPressed: () => Navigator.of(context).pop(),
                )
              ],
            );
          });
    }
  }

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    loadingdialog = ProgressDialog(context,
        type: ProgressDialogType.Normal, isDismissible: false);
    // TODO: implement mapEventToState
    if (event is FacebookLogin) {
      print('facebook login');
      loadingdialog.show();
      loadingdialog.style(
          message: "Waiting",
          elevation: 10,
          backgroundColor: Colors.white,
          progressWidget: Center(child: CircularProgressIndicator()),
          insetAnimCurve: Curves.easeInOut);
      await getUserLogin();
    }
    if (event is GoogleLogin) {
      print('google login');
    }
  }
}
