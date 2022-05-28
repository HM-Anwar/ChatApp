import 'package:bloc/bloc.dart';
import 'package:chat_app/services/authentication_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpState.initial()) {
    on<OnEmailChanged>(
        (event, emit) => emit(state.copyWith(email: event.email)));

    on<OnPasswordChanged>(
        (event, emit) => emit(state.copyWith(password: event.password)));

    on<OnSignUpPressed>((event, emit) async {
      final signUp =
          await AuthenticationService().signUp(state.email, state.password);
      emit(state.copyWith(isSubmitted: signUp));
    });
  }
}
