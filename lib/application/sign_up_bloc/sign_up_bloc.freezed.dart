// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function() onSignUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignUpPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnSignUpPressed value) onSignUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignUpPressed value)? onSignUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignUpPressed value)? onSignUpPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
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
    extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.onEmailChanged(email: $email)';
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
    required TResult Function() onSignUpPressed,
  }) {
    return onEmailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignUpPressed,
  }) {
    return onEmailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignUpPressed,
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
    required TResult Function(OnSignUpPressed value) onSignUpPressed,
  }) {
    return onEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignUpPressed value)? onSignUpPressed,
  }) {
    return onEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignUpPressed value)? onSignUpPressed,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(this);
    }
    return orElse();
  }
}

abstract class OnEmailChanged implements SignUpEvent {
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
    extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.onPasswordChanged(password: $password)';
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
    required TResult Function() onSignUpPressed,
  }) {
    return onPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignUpPressed,
  }) {
    return onPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignUpPressed,
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
    required TResult Function(OnSignUpPressed value) onSignUpPressed,
  }) {
    return onPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignUpPressed value)? onSignUpPressed,
  }) {
    return onPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignUpPressed value)? onSignUpPressed,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class OnPasswordChanged implements SignUpEvent {
  factory OnPasswordChanged(final String password) = _$OnPasswordChanged;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$OnPasswordChangedCopyWith<_$OnPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSignUpPressedCopyWith<$Res> {
  factory _$$OnSignUpPressedCopyWith(
          _$OnSignUpPressed value, $Res Function(_$OnSignUpPressed) then) =
      __$$OnSignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSignUpPressedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$OnSignUpPressedCopyWith<$Res> {
  __$$OnSignUpPressedCopyWithImpl(
      _$OnSignUpPressed _value, $Res Function(_$OnSignUpPressed) _then)
      : super(_value, (v) => _then(v as _$OnSignUpPressed));

  @override
  _$OnSignUpPressed get _value => super._value as _$OnSignUpPressed;
}

/// @nodoc

class _$OnSignUpPressed implements OnSignUpPressed {
  _$OnSignUpPressed();

  @override
  String toString() {
    return 'SignUpEvent.onSignUpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function() onSignUpPressed,
  }) {
    return onSignUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignUpPressed,
  }) {
    return onSignUpPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function()? onSignUpPressed,
    required TResult orElse(),
  }) {
    if (onSignUpPressed != null) {
      return onSignUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnEmailChanged value) onEmailChanged,
    required TResult Function(OnPasswordChanged value) onPasswordChanged,
    required TResult Function(OnSignUpPressed value) onSignUpPressed,
  }) {
    return onSignUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignUpPressed value)? onSignUpPressed,
  }) {
    return onSignUpPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnEmailChanged value)? onEmailChanged,
    TResult Function(OnPasswordChanged value)? onPasswordChanged,
    TResult Function(OnSignUpPressed value)? onSignUpPressed,
    required TResult orElse(),
  }) {
    if (onSignUpPressed != null) {
      return onSignUpPressed(this);
    }
    return orElse();
  }
}

abstract class OnSignUpPressed implements SignUpEvent {
  factory OnSignUpPressed() = _$OnSignUpPressed;
}

/// @nodoc
mixin _$SignUpState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isSubmitted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call({String email, String password, bool isSubmitted});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? isSubmitted = freezed,
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
      isSubmitted: isSubmitted == freezed
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, bool isSubmitted});
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, (v) => _then(v as _$_SignUpState));

  @override
  _$_SignUpState get _value => super._value as _$_SignUpState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? isSubmitted = freezed,
  }) {
    return _then(_$_SignUpState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitted: isSubmitted == freezed
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignUpState implements _SignUpState {
  _$_SignUpState(
      {required this.email, required this.password, required this.isSubmitted});

  @override
  final String email;
  @override
  final String password;
  @override
  final bool isSubmitted;

  @override
  String toString() {
    return 'SignUpState(email: $email, password: $password, isSubmitted: $isSubmitted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitted, isSubmitted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(isSubmitted));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  factory _SignUpState(
      {required final String email,
      required final String password,
      required final bool isSubmitted}) = _$_SignUpState;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  bool get isSubmitted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
