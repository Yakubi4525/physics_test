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

  _RemoveFromSuperSet removeFromSuperSet({required int index}) {
    return _RemoveFromSuperSet(
      index: index,
    );
  }

  _CreateSuperSet createuperSet(
      {required int index, required ExerciseModel model}) {
    return _CreateSuperSet(
      index: index,
      model: model,
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
    required TResult Function(int index) removeFromSuperSet,
    required TResult Function(int index, ExerciseModel model) createuperSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
    TResult Function(int index)? removeFromSuperSet,
    TResult Function(int index, ExerciseModel model)? createuperSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
    TResult Function(int index)? removeFromSuperSet,
    TResult Function(int index, ExerciseModel model)? createuperSet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateList value) updateListOfModels,
    required TResult Function(_RemoveFromSuperSet value) removeFromSuperSet,
    required TResult Function(_CreateSuperSet value) createuperSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
    TResult Function(_RemoveFromSuperSet value)? removeFromSuperSet,
    TResult Function(_CreateSuperSet value)? createuperSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
    TResult Function(_RemoveFromSuperSet value)? removeFromSuperSet,
    TResult Function(_CreateSuperSet value)? createuperSet,
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
    required TResult Function(int index) removeFromSuperSet,
    required TResult Function(int index, ExerciseModel model) createuperSet,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
    TResult Function(int index)? removeFromSuperSet,
    TResult Function(int index, ExerciseModel model)? createuperSet,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
    TResult Function(int index)? removeFromSuperSet,
    TResult Function(int index, ExerciseModel model)? createuperSet,
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
    required TResult Function(_RemoveFromSuperSet value) removeFromSuperSet,
    required TResult Function(_CreateSuperSet value) createuperSet,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
    TResult Function(_RemoveFromSuperSet value)? removeFromSuperSet,
    TResult Function(_CreateSuperSet value)? createuperSet,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
    TResult Function(_RemoveFromSuperSet value)? removeFromSuperSet,
    TResult Function(_CreateSuperSet value)? createuperSet,
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
    required TResult Function(int index) removeFromSuperSet,
    required TResult Function(int index, ExerciseModel model) createuperSet,
  }) {
    return updateListOfModels(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
    TResult Function(int index)? removeFromSuperSet,
    TResult Function(int index, ExerciseModel model)? createuperSet,
  }) {
    return updateListOfModels?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
    TResult Function(int index)? removeFromSuperSet,
    TResult Function(int index, ExerciseModel model)? createuperSet,
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
    required TResult Function(_RemoveFromSuperSet value) removeFromSuperSet,
    required TResult Function(_CreateSuperSet value) createuperSet,
  }) {
    return updateListOfModels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
    TResult Function(_RemoveFromSuperSet value)? removeFromSuperSet,
    TResult Function(_CreateSuperSet value)? createuperSet,
  }) {
    return updateListOfModels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
    TResult Function(_RemoveFromSuperSet value)? removeFromSuperSet,
    TResult Function(_CreateSuperSet value)? createuperSet,
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
abstract class _$RemoveFromSuperSetCopyWith<$Res> {
  factory _$RemoveFromSuperSetCopyWith(
          _RemoveFromSuperSet value, $Res Function(_RemoveFromSuperSet) then) =
      __$RemoveFromSuperSetCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$RemoveFromSuperSetCopyWithImpl<$Res>
    extends _$ExcerciseEventCopyWithImpl<$Res>
    implements _$RemoveFromSuperSetCopyWith<$Res> {
  __$RemoveFromSuperSetCopyWithImpl(
      _RemoveFromSuperSet _value, $Res Function(_RemoveFromSuperSet) _then)
      : super(_value, (v) => _then(v as _RemoveFromSuperSet));

  @override
  _RemoveFromSuperSet get _value => super._value as _RemoveFromSuperSet;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_RemoveFromSuperSet(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveFromSuperSet implements _RemoveFromSuperSet {
  const _$_RemoveFromSuperSet({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'ExcerciseEvent.removeFromSuperSet(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveFromSuperSet &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$RemoveFromSuperSetCopyWith<_RemoveFromSuperSet> get copyWith =>
      __$RemoveFromSuperSetCopyWithImpl<_RemoveFromSuperSet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int oldIndex, int newIndex) updateListOfModels,
    required TResult Function(int index) removeFromSuperSet,
    required TResult Function(int index, ExerciseModel model) createuperSet,
  }) {
    return removeFromSuperSet(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
    TResult Function(int index)? removeFromSuperSet,
    TResult Function(int index, ExerciseModel model)? createuperSet,
  }) {
    return removeFromSuperSet?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
    TResult Function(int index)? removeFromSuperSet,
    TResult Function(int index, ExerciseModel model)? createuperSet,
    required TResult orElse(),
  }) {
    if (removeFromSuperSet != null) {
      return removeFromSuperSet(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateList value) updateListOfModels,
    required TResult Function(_RemoveFromSuperSet value) removeFromSuperSet,
    required TResult Function(_CreateSuperSet value) createuperSet,
  }) {
    return removeFromSuperSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
    TResult Function(_RemoveFromSuperSet value)? removeFromSuperSet,
    TResult Function(_CreateSuperSet value)? createuperSet,
  }) {
    return removeFromSuperSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
    TResult Function(_RemoveFromSuperSet value)? removeFromSuperSet,
    TResult Function(_CreateSuperSet value)? createuperSet,
    required TResult orElse(),
  }) {
    if (removeFromSuperSet != null) {
      return removeFromSuperSet(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromSuperSet implements ExcerciseEvent {
  const factory _RemoveFromSuperSet({required int index}) =
      _$_RemoveFromSuperSet;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoveFromSuperSetCopyWith<_RemoveFromSuperSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateSuperSetCopyWith<$Res> {
  factory _$CreateSuperSetCopyWith(
          _CreateSuperSet value, $Res Function(_CreateSuperSet) then) =
      __$CreateSuperSetCopyWithImpl<$Res>;
  $Res call({int index, ExerciseModel model});
}

/// @nodoc
class __$CreateSuperSetCopyWithImpl<$Res>
    extends _$ExcerciseEventCopyWithImpl<$Res>
    implements _$CreateSuperSetCopyWith<$Res> {
  __$CreateSuperSetCopyWithImpl(
      _CreateSuperSet _value, $Res Function(_CreateSuperSet) _then)
      : super(_value, (v) => _then(v as _CreateSuperSet));

  @override
  _CreateSuperSet get _value => super._value as _CreateSuperSet;

  @override
  $Res call({
    Object? index = freezed,
    Object? model = freezed,
  }) {
    return _then(_CreateSuperSet(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ExerciseModel,
    ));
  }
}

/// @nodoc

class _$_CreateSuperSet implements _CreateSuperSet {
  const _$_CreateSuperSet({required this.index, required this.model});

  @override
  final int index;
  @override
  final ExerciseModel model;

  @override
  String toString() {
    return 'ExcerciseEvent.createuperSet(index: $index, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateSuperSet &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(model);

  @JsonKey(ignore: true)
  @override
  _$CreateSuperSetCopyWith<_CreateSuperSet> get copyWith =>
      __$CreateSuperSetCopyWithImpl<_CreateSuperSet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int oldIndex, int newIndex) updateListOfModels,
    required TResult Function(int index) removeFromSuperSet,
    required TResult Function(int index, ExerciseModel model) createuperSet,
  }) {
    return createuperSet(index, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
    TResult Function(int index)? removeFromSuperSet,
    TResult Function(int index, ExerciseModel model)? createuperSet,
  }) {
    return createuperSet?.call(index, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int oldIndex, int newIndex)? updateListOfModels,
    TResult Function(int index)? removeFromSuperSet,
    TResult Function(int index, ExerciseModel model)? createuperSet,
    required TResult orElse(),
  }) {
    if (createuperSet != null) {
      return createuperSet(index, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateList value) updateListOfModels,
    required TResult Function(_RemoveFromSuperSet value) removeFromSuperSet,
    required TResult Function(_CreateSuperSet value) createuperSet,
  }) {
    return createuperSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
    TResult Function(_RemoveFromSuperSet value)? removeFromSuperSet,
    TResult Function(_CreateSuperSet value)? createuperSet,
  }) {
    return createuperSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateList value)? updateListOfModels,
    TResult Function(_RemoveFromSuperSet value)? removeFromSuperSet,
    TResult Function(_CreateSuperSet value)? createuperSet,
    required TResult orElse(),
  }) {
    if (createuperSet != null) {
      return createuperSet(this);
    }
    return orElse();
  }
}

abstract class _CreateSuperSet implements ExcerciseEvent {
  const factory _CreateSuperSet(
      {required int index, required ExerciseModel model}) = _$_CreateSuperSet;

  int get index => throw _privateConstructorUsedError;
  ExerciseModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateSuperSetCopyWith<_CreateSuperSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExcerciseStateTearOff {
  const _$ExcerciseStateTearOff();

  _ExcerciseState call(
      {required bool isSubmitting,
      required bool noInternet,
      required bool serverError,
      required bool showWarninSuperSet,
      required List<ExerciseModel> excercises}) {
    return _ExcerciseState(
      isSubmitting: isSubmitting,
      noInternet: noInternet,
      serverError: serverError,
      showWarninSuperSet: showWarninSuperSet,
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
  bool get showWarninSuperSet => throw _privateConstructorUsedError;
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
      bool showWarninSuperSet,
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
    Object? showWarninSuperSet = freezed,
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
      showWarninSuperSet: showWarninSuperSet == freezed
          ? _value.showWarninSuperSet
          : showWarninSuperSet // ignore: cast_nullable_to_non_nullable
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
      bool showWarninSuperSet,
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
    Object? showWarninSuperSet = freezed,
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
      showWarninSuperSet: showWarninSuperSet == freezed
          ? _value.showWarninSuperSet
          : showWarninSuperSet // ignore: cast_nullable_to_non_nullable
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
      required this.showWarninSuperSet,
      required this.excercises});

  @override
  final bool isSubmitting;
  @override
  final bool noInternet;
  @override
  final bool serverError;
  @override
  final bool showWarninSuperSet;
  @override
  final List<ExerciseModel> excercises;

  @override
  String toString() {
    return 'ExcerciseState(isSubmitting: $isSubmitting, noInternet: $noInternet, serverError: $serverError, showWarninSuperSet: $showWarninSuperSet, excercises: $excercises)';
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
            (identical(other.showWarninSuperSet, showWarninSuperSet) ||
                const DeepCollectionEquality()
                    .equals(other.showWarninSuperSet, showWarninSuperSet)) &&
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
      const DeepCollectionEquality().hash(showWarninSuperSet) ^
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
      required bool showWarninSuperSet,
      required List<ExerciseModel> excercises}) = _$_ExcerciseState;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get noInternet => throw _privateConstructorUsedError;
  @override
  bool get serverError => throw _privateConstructorUsedError;
  @override
  bool get showWarninSuperSet => throw _privateConstructorUsedError;
  @override
  List<ExerciseModel> get excercises => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExcerciseStateCopyWith<_ExcerciseState> get copyWith =>
      throw _privateConstructorUsedError;
}
