import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat_app/services/profile_completion_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'profile_completion_event.dart';
part 'profile_completion_state.dart';

class ProfileCompletionBloc
    extends Bloc<ProfileCompletionEvent, ProfileCompletionState> {
  ProfileCompletionBloc() : super(ProfileCompletionState.initial()) {
    on<OnNameChanged>((event, emit) => emit(
        state.copyWith(firstName: event.firstName, lastName: event.lastName)));

    on<OnContactChanged>(
        (event, emit) => emit(state.copyWith(contactNo: event.contactNo)));

    on<OnDateChanged>(
        (event, emit) => emit(state.copyWith(dateOfBirth: event.dateOfBirth)));

    on<OnSubmitPressed>((event, emit) async {
      final currentUser = FirebaseAuth.instance.currentUser!;
      bool createUser = await ProfileCompletionService().createUser(
        uid: currentUser.uid,
        name: state.firstName + ' ' + state.lastName,
        contactNo: state.contactNo,
        dateOfBirth: state.dateOfBirth,
        email: currentUser.email.toString(),
        image: '',
        // friendRequest: 'none',
      );

      emit(state.copyWith(isSubmitted: createUser));
    });
  }
}
