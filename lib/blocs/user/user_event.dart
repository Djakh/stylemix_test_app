part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class GetUserEvent extends UserEvent {
  GetUserEvent();
}

class LoginEvent extends UserEvent {
  final String login;
  final String password;

  LoginEvent({required this.login, required this.password});
}

class LogOutUserEvent extends UserEvent {
  final int? id;
  LogOutUserEvent({this.id});
}
