// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'excercise_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExcerciseEventTearOff {
  const _$ExcerciseEventTearOff();

  _Started started() {
    return const _Started();
  }

  _UpdateList updateListOfModels(
      {required int oldIndex, required int newIndex}) {
    return _UpdateList(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }
}

/// @nodoc
const $ExcerciseEvent = _$ExcerciseEventTearOff();

/// @nodoc
mixin _$ExcerciseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int oldIndex, int newIndex) updateListOfModels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateList value) updateListOfModels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExcerciseEventCopyWith<$Res> {
  factory $ExcerciseEventCopyWith(
          ExcerciseEvent value, $Res Function(ExcerciseEvent) then) =
      _$ExcerciseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExcerciseEventCopyWithImpl<$Res>
    implements $ExcerciseEventCopyWith<$Res> {
  _$ExcerciseEventCopyWithImpl(this._value, this._then);

  final ExcerciseEvent _value;
  // ignore: unused_field
  final $Res Function(ExcerciseEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ExcerciseEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ExcerciseEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int oldIndex, int newIndex) updateListOfModels,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateList value) updateListOfModels,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ExcerciseEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$UpdateListCopyWith<$Res> {
  factory _$UpdateListCopyWith(
          _UpdateList value, $Res Function(_UpdateList) then) =
      __$UpdateListCopyWithImpl<$Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$UpdateListCopyWithImpl<$Res> extends _$ExcerciseEventCopyWithImpl<$Res>
    implements _$UpdateListCopyWith<$Res> {
  __$UpdateListCopyWithImpl(
      _UpdateList _value, $Res Function(_UpdateList) _then)
      : super(_value, (v) => _then(v as _UpdateList));

  @override
  _UpdateList get _value => super._value as _UpdateList;

  @override
  $Res call({
    Object? oldIndex = freezed,
    Object? newIndex = freezed,
  }) {
    return _then(_UpdateList(
      oldIndex: oldIndex == freezed
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateList implements _UpdateList {
  const _$_UpdateList({required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'ExcerciseEvent.updateListOfModels(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateList &&
            (identical(other.oldIndex, oldIndex) ||
                const DeepCollectionEquality()
                    .equals(other.oldIndex, oldIndex)) &&
            (identical(other.newIndex, newIndex) ||
                const DeepCollectionEquality()
                    .equals(other.newIndex, newIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(oldIndex) ^
      const DeepCollectionEquality().hash(newIndex);

  @JsonKey(ignore: true)
  @override
  _$UpdateListCopyWith<_UpdateList> get copyWith =>
      __$UpdateListCopyWithImpl<_UpdateList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int oldIndex, int newIndex) updateListOfModels,
  }) {
    return updateListOfModels(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
  }) {
    return updateListOfModels?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
    required TResult orElse(),
  }) {
    if (updateListOfModels != null) {
      return updateListOfModels(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateList value) updateListOfModels,
  }) {
    return updateListOfModels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
  }) {
    return updateListOfModels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
    required TResult orElse(),
  }) {
    if (updateListOfModels != null) {
      return updateListOfModels(this);
    }
    return orElse();
  }
}

abstract class _UpdateList implements ExcerciseEvent {
  const factory _UpdateList({required int oldIndex, required int newIndex}) =
      _$_UpdateList;

  int get oldIndex => throw _privateConstructorUsedError;
  int get newIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateListCopyWith<_UpdateList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExcerciseStateTearOff {
  const _$ExcerciseStateTearOff();

  _ExcerciseState call(
      {required bool isSubmitting,
      required bool noInternet,
      required bool serverError,
      required List<ExerciseModel> excercises}) {
    return _ExcerciseState(
      isSubmitting: isSubmitting,
      noInternet: noInternet,
      serverError: serverError,
      excercises: excercises,
    );
  }
}

/// @nodoc
const $ExcerciseState = _$ExcerciseStateTearOff();

/// @nodoc
mixin _$ExcerciseState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get noInternet => throw _privateConstructorUsedError;
  bool get serverError => throw _privateConstructorUsedError;
  List<ExerciseModel> get excercises => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExcerciseStateCopyWith<ExcerciseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExcerciseStateCopyWith<$Res> {
  factory $ExcerciseStateCopyWith(
          ExcerciseState value, $Res Function(ExcerciseState) then) =
      _$ExcerciseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      bool noInternet,
      bool serverError,
      List<ExerciseModel> excercises});
}

/// @nodoc
class _$ExcerciseStateCopyWithImpl<$Res>
    implements $ExcerciseStateCopyWith<$Res> {
  _$ExcerciseStateCopyWithImpl(this._value, this._then);

  final ExcerciseState _value;
  // ignore: unused_field
  final $Res Function(ExcerciseState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? noInternet = freezed,
    Object? serverError = freezed,
    Object? excercises = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      noInternet: noInternet == freezed
          ? _value.noInternet
          : noInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      serverError: serverError == freezed
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as bool,
      excercises: excercises == freezed
          ? _value.excercises
          : excercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseModel>,
    ));
  }
}

/// @nodoc
abstract class _$ExcerciseStateCopyWith<$Res>
    implements $ExcerciseStateCopyWith<$Res> {
  factory _$ExcerciseStateCopyWith(
          _ExcerciseState value, $Res Function(_ExcerciseState) then) =
      __$ExcerciseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      bool noInternet,
      bool serverError,
      List<ExerciseModel> excercises});
}

/// @nodoc
class __$ExcerciseStateCopyWithImpl<$Res>
    extends _$ExcerciseStateCopyWithImpl<$Res>
    implements _$ExcerciseStateCopyWith<$Res> {
  __$ExcerciseStateCopyWithImpl(
      _ExcerciseState _value, $Res Function(_ExcerciseState) _then)
      : super(_value, (v) => _then(v as _ExcerciseState));

  @override
  _ExcerciseState get _value => super._value as _ExcerciseState;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? noInternet = freezed,
    Object? serverError = freezed,
    Object? excercises = freezed,
  }) {
    return _then(_ExcerciseState(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      noInternet: noInternet == freezed
          ? _value.noInternet
          : noInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      serverError: serverError == freezed
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as bool,
      excercises: excercises == freezed
          ? _value.excercises
          : excercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseModel>,
    ));
  }
}

/// @nodoc

class _$_ExcerciseState implements _ExcerciseState {
  const _$_ExcerciseState(
      {required this.isSubmitting,
      required this.noInternet,
      required this.serverError,
      required this.excercises});

  @override
  final bool isSubmitting;
  @override
  final bool noInternet;
  @override
  final bool serverError;
  @override
  final List<ExerciseModel> excercises;

  @override
  String toString() {
    return 'ExcerciseState(isSubmitting: $isSubmitting, noInternet: $noInternet, serverError: $serverError, excercises: $excercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExcerciseState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.noInternet, noInternet) ||
                const DeepCollectionEquality()
                    .equals(other.noInternet, noInternet)) &&
            (identical(other.serverError, serverError) ||
                const DeepCollectionEquality()
                    .equals(other.serverError, serverError)) &&
            (identical(other.excercises, excercises) ||
                const DeepCollectionEquality()
                    .equals(other.excercises, excercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(noInternet) ^
      const DeepCollectionEquality().hash(serverError) ^
      const DeepCollectionEquality().hash(excercises);

  @JsonKey(ignore: true)
  @override
  _$ExcerciseStateCopyWith<_ExcerciseState> get copyWith =>
      __$ExcerciseStateCopyWithImpl<_ExcerciseState>(this, _$identity);
}

abstract class _ExcerciseState implements ExcerciseState {
  const factory _ExcerciseState(
      {required bool isSubmitting,
      required bool noInternet,
      required bool serverError,
      required List<ExerciseModel> excercises}) = _$_ExcerciseState;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get noInternet => throw _privateConstructorUsedError;
  @override
  bool get serverError => throw _privateConstructorUsedError;
  @override
  List<ExerciseModel> get excercises => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExcerciseStateCopyWith<_ExcerciseState> get copyWith =>
      throw _privateConstructorUsedError;
}
