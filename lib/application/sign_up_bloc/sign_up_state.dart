part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  factory SignUpState({
    required String email,
    required String password,
    required bool isSubmitted,
  }) = _SignUpState;

  factory SignUpState.initial() =>
      SignUpState(email: '', password: '', isSubmitted: false);
}
