part of 'signupbloc_bloc.dart';

@immutable
abstract class SignupblocEvent {}
class FetchSignup extends SignupblocEvent{
  String username;
  String email;
  String password;

  FetchSignup( this.username ,this.email,this.password,);
}
