import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat_app/services/chat_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../model/chat_model.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  StreamSubscription? chatStream;
  ChatBloc(String chatPartnerUid) : super(ChatState.initial()) {
    on<OnChatList>((event, emit) => emit(state.copyWith(chat: event.chat)));

    chatStream = ChatService().getChat(chatPartnerUid).listen((chat) {
      add(OnChatList(chat));
    });
  }
}
