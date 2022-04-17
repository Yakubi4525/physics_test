part of 'excercise_bloc.dart';

@freezed
class ExcerciseEvent with _$ExcerciseEvent {
  const factory ExcerciseEvent.started() = _Started;
  const factory ExcerciseEvent.updateListOfModels({
    required int oldIndex,
    required int newIndex,
  }) = _UpdateList;
    const factory ExcerciseEvent.removeFromSuperSet({
 required int index,
  }) = _RemoveFromSuperSet;
  const factory ExcerciseEvent.createuperSet({
 required int index,
 required ExerciseModel model,
  }) = _CreateSuperSet;
}
