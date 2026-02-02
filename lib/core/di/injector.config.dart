// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:projectsetup/app/presentation/blocs/app_cubit.dart' as _i666;
import 'package:projectsetup/app/presentation/blocs/auth_error/app_auth_error_cubit.dart'
    as _i409;
import 'package:projectsetup/core/routes/app_router.dart' as _i201;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i666.AppCubit>(() => _i666.AppCubit());
    gh.factory<_i409.AppAuthErrorCubit>(() => _i409.AppAuthErrorCubit());
    gh.singleton<_i201.AppRouter>(() => _i201.AppRouter());
    return this;
  }
}
