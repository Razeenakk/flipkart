import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flipkart/Api/user_api.dart';
import 'package:flipkart/ModelClasses/signin_modelclass.dart';
import 'package:meta/meta.dart';

part 'signinbloc_event.dart';
part 'signinbloc_state.dart';

class SigninblocBloc extends Bloc<SigninblocEvent, SigninblocState> {
  late SigninModelclass signinModelclass;
  UserApi userApi;
  SigninblocBloc(this.userApi) : super(SigninblocInitial()) {
    on<Fetchsignin>((event, emit) async {
      emit (SigninblocLoading());
      try{
        signinModelclass = await userApi.getSigninFunction(event.email,event.password);
        emit(SigninblocLoaded());
      }catch(e){
        emit(SigninblocError());

      }


      // TODO: implement event handler
    });
  }
}


