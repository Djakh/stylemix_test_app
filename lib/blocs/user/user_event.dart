part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class GetUserEvent extends UserEvent {}

class LogOutUserEvent extends UserEvent {
  final int? id;
  LogOutUserEvent({this.id});
}
