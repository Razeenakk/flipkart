part of 'update_user_bloc.dart';

@immutable
abstract class UpdateUserEvent {}
class PutCredential extends UpdateUserEvent{
  String email;
  String password;
  PutCredential(this.email,this.password);
}
