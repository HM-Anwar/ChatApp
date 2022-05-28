part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  factory SignInEvent.onEmailChanged(String email) = OnEmailChanged;
  factory SignInEvent.onPasswordChanged(String password) = OnPasswordChanged;
  factory SignInEvent.onSignInPressed() = OnSignInPressed;
}
