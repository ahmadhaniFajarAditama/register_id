part of 'user_bloc.dart';

@immutable
sealed class UserEvent {}

class OnAddUser extends UserEvent{
  final User newUser;

  OnAddUser(this.newUser);
}

class OnRemoveUser extends UserEvent{
  final int index;

  OnRemoveUser(this.index);
}

class OnUpdateUser extends UserEvent{
  final User newUser;
  final int index;

  OnUpdateUser(this.newUser, this.index);
}
