import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:test2/bloc/events/loginevent.dart';
import 'package:test2/bloc/states/loginstate.dart';

class LoginBloc extends Bloc<LoginEvent,LoginState>{
  BuildContext context;
  LoginBloc({@required this.context});

  @override
  // TODO: implement initialState
  get initialState => LoginStartState();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    // TODO: implement mapEventToState
    if(event is FacebookLogin){
      print('facebook login');
    }
    if(event is GoogleLogin){
      print('google login');
    }
  }
}