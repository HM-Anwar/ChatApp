import 'package:chat_app/services/authentication_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState.initial()) {
    on<OnEmailChanged>(
        (event, emit) => emit(state.copyWith(email: event.email)));

    on<OnPasswordChanged>(
        (event, emit) => emit(state.copyWith(password: event.password)));

    on<OnSignInPressed>((event, emit) {
      AuthenticationService().signIn(state.email, state.password);
    });
  }
}
