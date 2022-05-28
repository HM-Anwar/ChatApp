part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  factory ChatState({
    required List<ChatModel> chat,
    required String image,
    required List<String> uids,
    required bool isSeen,
    required DateTime date,
    required String name,
    required String msg,
  }) = _ChatState;

  factory ChatState.initial() => _ChatState(
        image: '',
        uids: [],
        isSeen: false,
        date: DateTime.now(),
        name: '',
        msg: '',
        chat: [],
      );
}
