part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  factory ChatEvent.onChatList(List<ChatModel> chat) = OnChatList;
  factory ChatEvent.onChatScreen() = OnChatScreen;
}
