import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flipkart/Api/put_api.dart';
import 'package:flipkart/ModelClasses/updateuser_modelclass.dart';
import 'package:meta/meta.dart';

part 'update_user_event.dart';
part 'update_user_state.dart';

class UpdateUserBloc extends Bloc<UpdateUserEvent, UpdateUserState> {
  late UpdateuserModelclass  updateuserModelclass;
  late UpdateUserApi updateUserApi;


  UpdateUserBloc(this.updateUserApi) : super(UpdateUserInitial()) {

    on<PutCredential>((event, emit)async {
      emit(UpdateUserLoading());
      try{
        updateuserModelclass = await updateUserApi.getUpdateUserFunction(event.email,event.password);
        emit(UpdateUserLoaded());

      }catch(e){
        emit(UpdateUserError());
      }
      // TODO: implement event handler
    });
  }
}



