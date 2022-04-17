part of 'excercise_bloc.dart';

@freezed
class ExcerciseState with _$ExcerciseState {
  const factory ExcerciseState({
    required final bool isSubmitting,
    required final bool noInternet,
    required final bool serverError,
    required final bool showWarninSuperSet,
    required final List<ExerciseModel> excercises,
  }) = _ExcerciseState;
  factory ExcerciseState.initial() => const ExcerciseState(
        isSubmitting: false,
        excercises: [],
        serverError: false,
        noInternet: false,
        showWarninSuperSet: false,
      );
}
