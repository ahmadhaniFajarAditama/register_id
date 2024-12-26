import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:register_id/models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitial([])) {
    on<OnAddUser>((event, emit) {
      User newUser = event.newUser;
      emit(
        UserAdded(
          [...state.users,newUser],
        ),
      );
    }
    );
    on<OnUpdateUser>((event, emit) {
      User newUser = event.newUser;
      int index = event.index;
      List<User> usersUpdates = state.users;
      usersUpdates[index] = newUser;
      emit(
        UserUpdated(
          usersUpdates
        ),
      );
    }
    );
    on<OnRemoveUser>((event, emit) {
      int index = event.index;
      List<User> usersRemoved = state.users;
      usersRemoved.removeAt(index);
      emit(
        UserRemoved(
          usersRemoved
        ),
      );
    }
    );
  }
}
