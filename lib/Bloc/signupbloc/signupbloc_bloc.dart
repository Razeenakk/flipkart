import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flipkart/Api/user_api.dart';
import 'package:flipkart/ModelClasses/signup_modelclass.dart';
import 'package:meta/meta.dart';

part 'signupbloc_event.dart';
part 'signupbloc_state.dart';

class SignupblocBloc extends Bloc<SignupblocEvent, SignupblocState> {
  late SignupModelclass signupModelclass;
  UserApi userApi;
  SignupblocBloc(this.userApi) : super(SignupblocInitial()) {
    on<FetchSignup>((event, emit)async {
      emit(SignupblocLoading());
      try{
        signupModelclass = await userApi.getSignupFunction( event.username ,event.email,event.password,);
        emit(SignupblocLoaded());
      }catch(e){
        emit(SignupblocError());
      }
      // TODO: implement event handler
    });
  }
}



