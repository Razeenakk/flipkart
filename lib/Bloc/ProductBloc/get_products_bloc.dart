import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flipkart/Api/get%20api.dart';
import 'package:flipkart/ModelClasses/ProductsModelclass.dart';
import 'package:meta/meta.dart';

part 'get_products_event.dart';
part 'get_products_state.dart';

class GetProductsBloc extends Bloc<GetProductsEvent, GetProductsState> {
  late ProductsModelclass productsModelclass;
  ProductApi productApi;


  GetProductsBloc(this.productApi) : super(GetProductsInitial()) {
    on<GetProductsEvent>((event, emit)async {
      emit(GetProductsLoading());
      try{
        productsModelclass = await productApi.getProductFunction();
        emit(GetProductLoaded());



      }catch(e){
        emit(GetProductsError());

      }
      // TODO: implement event handler
    });
  }
}
