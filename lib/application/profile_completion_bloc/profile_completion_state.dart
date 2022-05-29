part of 'profile_completion_bloc.dart';

class ProfileCompletionState {
  final String firstName;
  final String lastName;
  final String contactNo;
  final DateTime dateOfBirth;
  final String imageUrl;
  final File? file;
  final bool isSubmitted;

  ProfileCompletionState({
    required this.firstName,
    required this.lastName,
    required this.contactNo,
    required this.dateOfBirth,
    required this.file,
    required this.imageUrl,
    required this.isSubmitted,
  });

  factory ProfileCompletionState.initial() {
    return ProfileCompletionState(
      firstName: '',
      lastName: '',
      contactNo: '',
      dateOfBirth: DateTime.now(),
      file: null,
      imageUrl: '',
      isSubmitted: false,
    );
  }

  ProfileCompletionState copyWith({
    String? firstName,
    String? lastName,
    String? contactNo,
    DateTime? dateOfBirth,
    String? imageUrl,
    File? file,
    bool? isSubmitted,
  }) {
    return ProfileCompletionState(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        contactNo: contactNo ?? this.contactNo,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        imageUrl: imageUrl ?? this.imageUrl,
        file: file ?? this.file,
        isSubmitted: isSubmitted ?? this.isSubmitted);
  }
}
