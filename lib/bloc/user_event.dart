part of 'user_bloc.dart';

@immutable
sealed class UserEvent {}

class OnAddUser extends UserEvent{
  final User newUser;

  OnAddUser(this.newUser);
}
