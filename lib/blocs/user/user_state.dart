part of 'user_bloc.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class UserLoadingState extends UserState {}

class UserCompliedState extends UserState {
  final User? user;
  UserCompliedState({this.user});
}

class UserFailedState extends UserState {
  final Exception? exception;
  UserFailedState({this.exception});

  bool get isRepositoryException => exception is RepositoryException;

  RepositoryException get repositoryException => exception as RepositoryException;

  bool get hasException => exception != null;

  bool hasError(String key) {
    return isRepositoryException && repositoryException.errors.containsKey(key);
  }

  String getError(String key) {
    return repositoryException.errors[key][0];
  }
}
