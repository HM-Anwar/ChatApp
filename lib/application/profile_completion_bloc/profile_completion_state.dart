part of 'profile_completion_bloc.dart';

class ProfileCompletionState {
  final String firstName;
  final String lastName;
  final String contactNo;
  final DateTime dateOfBirth;
  final bool isSubmitted;

  ProfileCompletionState(
      {required this.firstName,
      required this.lastName,
      required this.contactNo,
      required this.dateOfBirth,
      required this.isSubmitted});

  factory ProfileCompletionState.initial() {
    return ProfileCompletionState(
        firstName: '',
        lastName: '',
        contactNo: '',
        dateOfBirth: DateTime.now(),
        isSubmitted: false);
  }

  ProfileCompletionState copyWith(
      {String? firstName,
      String? lastName,
      String? contactNo,
      DateTime? dateOfBirth,
      bool? isSubmitted}) {
    return ProfileCompletionState(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        contactNo: contactNo ?? this.contactNo,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        isSubmitted: isSubmitted ?? this.isSubmitted);
  }
}
