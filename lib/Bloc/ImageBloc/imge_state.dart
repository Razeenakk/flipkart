part of 'imge_bloc.dart';

@immutable
abstract class ImgeState {}

class ImgeInitial extends ImgeState {}
class ImgeLoaded extends ImgeState {}
class ImgeLoading extends ImgeState {}
class ImgeError extends ImgeState {}
