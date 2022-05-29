part of 'profile_completion_bloc.dart';

abstract class ProfileCompletionEvent {}

class OnNameChanged extends ProfileCompletionEvent {
  final String? firstName;
  final String? lastName;

  OnNameChanged({this.firstName, this.lastName});
}

class OnContactChanged extends ProfileCompletionEvent {
  final String contactNo;
  OnContactChanged(this.contactNo);
}

class OnDateChanged extends ProfileCompletionEvent {
  final DateTime dateOfBirth;
  OnDateChanged(this.dateOfBirth);
}

class OnFileChanged extends ProfileCompletionEvent {
  final File file;

  OnFileChanged(this.file);
}

class OnImageUrlChanged extends ProfileCompletionEvent {
  final String imageUrl;

  OnImageUrlChanged(this.imageUrl);
}

class OnSubmitPressed extends ProfileCompletionEvent {}
