// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatModel> chat) onChatList,
    required TResult Function() onChatScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatModel> chat)? onChatList,
    TResult Function()? onChatScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatModel> chat)? onChatList,
    TResult Function()? onChatScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnChatList value) onChatList,
    required TResult Function(OnChatScreen value) onChatScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnChatList value)? onChatList,
    TResult Function(OnChatScreen value)? onChatScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnChatList value)? onChatList,
    TResult Function(OnChatScreen value)? onChatScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class _$$OnChatListCopyWith<$Res> {
  factory _$$OnChatListCopyWith(
          _$OnChatList value, $Res Function(_$OnChatList) then) =
      __$$OnChatListCopyWithImpl<$Res>;
  $Res call({List<ChatModel> chat});
}

/// @nodoc
class __$$OnChatListCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$OnChatListCopyWith<$Res> {
  __$$OnChatListCopyWithImpl(
      _$OnChatList _value, $Res Function(_$OnChatList) _then)
      : super(_value, (v) => _then(v as _$OnChatList));

  @override
  _$OnChatList get _value => super._value as _$OnChatList;

  @override
  $Res call({
    Object? chat = freezed,
  }) {
    return _then(_$OnChatList(
      chat == freezed
          ? _value._chat
          : chat // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
    ));
  }
}

/// @nodoc

class _$OnChatList implements OnChatList {
  _$OnChatList(final List<ChatModel> chat) : _chat = chat;

  final List<ChatModel> _chat;
  @override
  List<ChatModel> get chat {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chat);
  }

  @override
  String toString() {
    return 'ChatEvent.onChatList(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChatList &&
            const DeepCollectionEquality().equals(other._chat, _chat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chat));

  @JsonKey(ignore: true)
  @override
  _$$OnChatListCopyWith<_$OnChatList> get copyWith =>
      __$$OnChatListCopyWithImpl<_$OnChatList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatModel> chat) onChatList,
    required TResult Function() onChatScreen,
  }) {
    return onChatList(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatModel> chat)? onChatList,
    TResult Function()? onChatScreen,
  }) {
    return onChatList?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatModel> chat)? onChatList,
    TResult Function()? onChatScreen,
    required TResult orElse(),
  }) {
    if (onChatList != null) {
      return onChatList(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnChatList value) onChatList,
    required TResult Function(OnChatScreen value) onChatScreen,
  }) {
    return onChatList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnChatList value)? onChatList,
    TResult Function(OnChatScreen value)? onChatScreen,
  }) {
    return onChatList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnChatList value)? onChatList,
    TResult Function(OnChatScreen value)? onChatScreen,
    required TResult orElse(),
  }) {
    if (onChatList != null) {
      return onChatList(this);
    }
    return orElse();
  }
}

abstract class OnChatList implements ChatEvent {
  factory OnChatList(final List<ChatModel> chat) = _$OnChatList;

  List<ChatModel> get chat => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$OnChatListCopyWith<_$OnChatList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnChatScreenCopyWith<$Res> {
  factory _$$OnChatScreenCopyWith(
          _$OnChatScreen value, $Res Function(_$OnChatScreen) then) =
      __$$OnChatScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnChatScreenCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$OnChatScreenCopyWith<$Res> {
  __$$OnChatScreenCopyWithImpl(
      _$OnChatScreen _value, $Res Function(_$OnChatScreen) _then)
      : super(_value, (v) => _then(v as _$OnChatScreen));

  @override
  _$OnChatScreen get _value => super._value as _$OnChatScreen;
}

/// @nodoc

class _$OnChatScreen implements OnChatScreen {
  _$OnChatScreen();

  @override
  String toString() {
    return 'ChatEvent.onChatScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnChatScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ChatModel> chat) onChatList,
    required TResult Function() onChatScreen,
  }) {
    return onChatScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ChatModel> chat)? onChatList,
    TResult Function()? onChatScreen,
  }) {
    return onChatScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ChatModel> chat)? onChatList,
    TResult Function()? onChatScreen,
    required TResult orElse(),
  }) {
    if (onChatScreen != null) {
      return onChatScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnChatList value) onChatList,
    required TResult Function(OnChatScreen value) onChatScreen,
  }) {
    return onChatScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnChatList value)? onChatList,
    TResult Function(OnChatScreen value)? onChatScreen,
  }) {
    return onChatScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnChatList value)? onChatList,
    TResult Function(OnChatScreen value)? onChatScreen,
    required TResult orElse(),
  }) {
    if (onChatScreen != null) {
      return onChatScreen(this);
    }
    return orElse();
  }
}

abstract class OnChatScreen implements ChatEvent {
  factory OnChatScreen() = _$OnChatScreen;
}

/// @nodoc
mixin _$ChatState {
  List<ChatModel> get chat => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<String> get uids => throw _privateConstructorUsedError;
  bool get isSeen => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call(
      {List<ChatModel> chat,
      String image,
      List<String> uids,
      bool isSeen,
      DateTime date,
      String name,
      String msg});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;

  @override
  $Res call({
    Object? chat = freezed,
    Object? image = freezed,
    Object? uids = freezed,
    Object? isSeen = freezed,
    Object? date = freezed,
    Object? name = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      uids: uids == freezed
          ? _value.uids
          : uids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isSeen: isSeen == freezed
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_ChatStateCopyWith(
          _$_ChatState value, $Res Function(_$_ChatState) then) =
      __$$_ChatStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ChatModel> chat,
      String image,
      List<String> uids,
      bool isSeen,
      DateTime date,
      String name,
      String msg});
}

/// @nodoc
class __$$_ChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$$_ChatStateCopyWith<$Res> {
  __$$_ChatStateCopyWithImpl(
      _$_ChatState _value, $Res Function(_$_ChatState) _then)
      : super(_value, (v) => _then(v as _$_ChatState));

  @override
  _$_ChatState get _value => super._value as _$_ChatState;

  @override
  $Res call({
    Object? chat = freezed,
    Object? image = freezed,
    Object? uids = freezed,
    Object? isSeen = freezed,
    Object? date = freezed,
    Object? name = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$_ChatState(
      chat: chat == freezed
          ? _value._chat
          : chat // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      uids: uids == freezed
          ? _value._uids
          : uids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isSeen: isSeen == freezed
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatState implements _ChatState {
  _$_ChatState(
      {required final List<ChatModel> chat,
      required this.image,
      required final List<String> uids,
      required this.isSeen,
      required this.date,
      required this.name,
      required this.msg})
      : _chat = chat,
        _uids = uids;

  final List<ChatModel> _chat;
  @override
  List<ChatModel> get chat {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chat);
  }

  @override
  final String image;
  final List<String> _uids;
  @override
  List<String> get uids {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uids);
  }

  @override
  final bool isSeen;
  @override
  final DateTime date;
  @override
  final String name;
  @override
  final String msg;

  @override
  String toString() {
    return 'ChatState(chat: $chat, image: $image, uids: $uids, isSeen: $isSeen, date: $date, name: $name, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatState &&
            const DeepCollectionEquality().equals(other._chat, _chat) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other._uids, _uids) &&
            const DeepCollectionEquality().equals(other.isSeen, isSeen) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chat),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(_uids),
      const DeepCollectionEquality().hash(isSeen),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      __$$_ChatStateCopyWithImpl<_$_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  factory _ChatState(
      {required final List<ChatModel> chat,
      required final String image,
      required final List<String> uids,
      required final bool isSeen,
      required final DateTime date,
      required final String name,
      required final String msg}) = _$_ChatState;

  @override
  List<ChatModel> get chat => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  List<String> get uids => throw _privateConstructorUsedError;
  @override
  bool get isSeen => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
