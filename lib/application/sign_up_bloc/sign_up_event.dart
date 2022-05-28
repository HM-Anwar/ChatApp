part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  factory SignUpEvent.onEmailChanged(String email) = OnEmailChanged;
  factory SignUpEvent.onPasswordChanged(String password) = OnPasswordChanged;
  factory SignUpEvent.onSignUpPressed() = OnSignUpPressed;
}
