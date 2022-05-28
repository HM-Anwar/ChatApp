// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function() onSignInPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignInPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignInPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnSignInPressed value) onSignInPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignInPressed value)? onSignInPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignInPressed value)? onSignInPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class _$$OnEmailChangedCopyWith<$Res> {
  factory _$$OnEmailChangedCopyWith(
          _$OnEmailChanged value, $Res Function(_$OnEmailChanged) then) =
      __$$OnEmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$OnEmailChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$OnEmailChangedCopyWith<$Res> {
  __$$OnEmailChangedCopyWithImpl(
      _$OnEmailChanged _value, $Res Function(_$OnEmailChanged) _then)
      : super(_value, (v) => _then(v as _$OnEmailChanged));

  @override
  _$OnEmailChanged get _value => super._value as _$OnEmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$OnEmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnEmailChanged implements OnEmailChanged {
  _$OnEmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInEvent.onEmailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$OnEmailChangedCopyWith<_$OnEmailChanged> get copyWith =>
      __$$OnEmailChangedCopyWithImpl<_$OnEmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function() onSignInPressed,
  }) {
    return onEmailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignInPressed,
  }) {
    return onEmailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignInPressed,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnSignInPressed value) onSignInPressed,
  }) {
    return onEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignInPressed value)? onSignInPressed,
  }) {
    return onEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignInPressed value)? onSignInPressed,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(this);
    }
    return orElse();
  }
}

abstract class OnEmailChanged implements SignInEvent {
  factory OnEmailChanged(final String email) = _$OnEmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$OnEmailChangedCopyWith<_$OnEmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPasswordChangedCopyWith<$Res> {
  factory _$$OnPasswordChangedCopyWith(
          _$OnPasswordChanged value, $Res Function(_$OnPasswordChanged) then) =
      __$$OnPasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$$OnPasswordChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$OnPasswordChangedCopyWith<$Res> {
  __$$OnPasswordChangedCopyWithImpl(
      _$OnPasswordChanged _value, $Res Function(_$OnPasswordChanged) _then)
      : super(_value, (v) => _then(v as _$OnPasswordChanged));

  @override
  _$OnPasswordChanged get _value => super._value as _$OnPasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$OnPasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnPasswordChanged implements OnPasswordChanged {
  _$OnPasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.onPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$OnPasswordChangedCopyWith<_$OnPasswordChanged> get copyWith =>
      __$$OnPasswordChangedCopyWithImpl<_$OnPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function() onSignInPressed,
  }) {
    return onPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignInPressed,
  }) {
    return onPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignInPressed,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnSignInPressed value) onSignInPressed,
  }) {
    return onPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignInPressed value)? onSignInPressed,
  }) {
    return onPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignInPressed value)? onSignInPressed,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class OnPasswordChanged implements SignInEvent {
  factory OnPasswordChanged(final String password) = _$OnPasswordChanged;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$OnPasswordChangedCopyWith<_$OnPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSignInPressedCopyWith<$Res> {
  factory _$$OnSignInPressedCopyWith(
          _$OnSignInPressed value, $Res Function(_$OnSignInPressed) then) =
      __$$OnSignInPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSignInPressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$OnSignInPressedCopyWith<$Res> {
  __$$OnSignInPressedCopyWithImpl(
      _$OnSignInPressed _value, $Res Function(_$OnSignInPressed) _then)
      : super(_value, (v) => _then(v as _$OnSignInPressed));

  @override
  _$OnSignInPressed get _value => super._value as _$OnSignInPressed;
}

/// @nodoc

class _$OnSignInPressed implements OnSignInPressed {
  _$OnSignInPressed();

  @override
  String toString() {
    return 'SignInEvent.onSignInPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSignInPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function() onSignInPressed,
  }) {
    return onSignInPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignInPressed,
  }) {
    return onSignInPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignInPressed,
    required TResult orElse(),
  }) {
    if (onSignInPressed != null) {
      return onSignInPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnSignInPressed value) onSignInPressed,
  }) {
    return onSignInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignInPressed value)? onSignInPressed,
  }) {
    return onSignInPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignInPressed value)? onSignInPressed,
    required TResult orElse(),
  }) {
    if (onSignInPressed != null) {
      return onSignInPressed(this);
    }
    return orElse();
  }
}

abstract class OnSignInPressed implements SignInEvent {
  factory OnSignInPressed() = _$OnSignInPressed;
}

/// @nodoc
mixin _$SignInState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, (v) => _then(v as _$_SignInState));

  @override
  _$_SignInState get _value => super._value as _$_SignInState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_SignInState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  _$_SignInState({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  factory _SignInState(
      {required final String email,
      required final String password}) = _$_SignInState;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
