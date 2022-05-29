import 'dart:async';
import 'dart:io';

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

    on<OnFileChanged>((event, emit) => emit(state.copyWith(file: event.file)));

    on<OnImageUrlChanged>(
        (event, emit) => emit(state.copyWith(imageUrl: event.imageUrl)));

    on<OnDateChanged>(
        (event, emit) => emit(state.copyWith(dateOfBirth: event.dateOfBirth)));

    on<OnSubmitPressed>((event, emit) async {
      if (state.file != null) {
        String downloadUrl =
            await ProfileCompletionService().uploadProfileImage(state.file!);
        emit(state.copyWith(imageUrl: downloadUrl));
      }
      final currentUser = FirebaseAuth.instance.currentUser!;
      bool createUser = await ProfileCompletionService().createUser(
        uid: currentUser.uid,
        name: state.firstName + ' ' + state.lastName,
        contactNo: state.contactNo,
        dateOfBirth: state.dateOfBirth,
        email: currentUser.email.toString(),
        image: state.imageUrl,
        // friendRequest: 'none',
      );

      emit(state.copyWith(isSubmitted: createUser));
    });
  }
}
