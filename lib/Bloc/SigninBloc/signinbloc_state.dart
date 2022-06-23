part of 'signinbloc_bloc.dart';

@immutable
abstract class SigninblocState {}

class SigninblocInitial extends SigninblocState {}
class SigninblocLoaded extends SigninblocState{}
class SigninblocLoading extends SigninblocState{}
class SigninblocError extends SigninblocState{}
