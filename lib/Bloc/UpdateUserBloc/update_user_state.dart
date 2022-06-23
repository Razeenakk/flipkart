part of 'update_user_bloc.dart';

@immutable
abstract class UpdateUserState {}

class UpdateUserInitial extends UpdateUserState {}
class UpdateUserLoaded extends UpdateUserState {}
class UpdateUserLoading extends UpdateUserState {}
class UpdateUserError extends UpdateUserState {}
