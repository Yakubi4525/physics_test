// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/network_check/network_info.dart' as _i5;
import 'core/network_check/netwwork_info_impl.dart' as _i6;
import 'features/excercise/data/datasources/local/excercise_local_source.dart'
    as _i3;
import 'features/excercise/data/datasources/local/excercise_local_source_impl.dart'
    as _i4;
import 'features/excercise/data/repository/excercise_repo_impl.dart' as _i8;
import 'features/excercise/domain/repository/excercise_repository.dart' as _i7;
import 'features/excercise/ui/bloc/excercise_bloc.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.LocalExcerciseSource>(
      () => _i4.LocalExcerciseSourceImpl());
  gh.lazySingleton<_i5.NetworkInfo>(() => _i6.NetworkInfoImpl());
  gh.lazySingleton<_i7.ExcerciseRepo>(() => _i8.ExcerciseRepoImpl(
      localRepo: get<_i3.LocalExcerciseSource>(),
      networkInfo: get<_i5.NetworkInfo>()));
  gh.factory<_i9.ExcerciseBloc>(
      () => _i9.ExcerciseBloc(get<_i7.ExcerciseRepo>()));
  return get;
}
