part of 'get_products_bloc.dart';

@immutable
abstract class GetProductsState {}

class GetProductsInitial extends GetProductsState {}
class GetProductLoaded extends GetProductsState {}
class GetProductsLoading extends GetProductsState {}
class GetProductsError extends GetProductsState {}
