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
  }
}
