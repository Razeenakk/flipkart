part of 'signupbloc_bloc.dart';

@immutable
abstract class SignupblocState {}

class SignupblocInitial extends SignupblocState {}
class SignupblocLoaded extends SignupblocState {}
class SignupblocLoading extends SignupblocState {}
class SignupblocError extends SignupblocState {}
