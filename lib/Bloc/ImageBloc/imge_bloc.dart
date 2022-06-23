import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flipkart/Api/post_api.dart';


import 'package:flipkart/ModelClasses/uploadimage_class.dart';
import 'package:meta/meta.dart';

part 'imge_event.dart';
part 'imge_state.dart';

class ImgeBloc extends Bloc<ImgeEvent, ImgeState> {
  late UploadimageClass uploadimageClass;
  late ImageApi imageApi;


  ImgeBloc(this.imageApi) : super(ImgeInitial()) {
    on<PutImage>((event, emit) async {
      emit(ImgeLoading());
      try {
        print("gghjkk"+event.image);
        uploadimageClass = await imageApi.getUploadimageFunction(event.image);

        emit(ImgeLoaded());

      } catch (e) {
        emit(ImgeError());
      }
      // TODO: implement event handler
    });
  }

}
