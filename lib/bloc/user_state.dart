part of 'user_bloc.dart';

@immutable
sealed class UserState {
  final List<User> users;

  const UserState(this.users);
}

final class UserInitial extends UserState {
  const UserInitial(super.users);
}

final class UserAdded extends UserState {
  const UserAdded(super.users);
}