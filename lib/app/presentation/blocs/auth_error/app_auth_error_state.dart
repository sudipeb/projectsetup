part of 'app_auth_error_cubit.dart';

@freezed
class AppAuthErrorState with _$AppAuthErrorState {
  const factory AppAuthErrorState.initial() = _Initial;
  const factory AppAuthErrorState.error403({String? message}) = _AppErrorForbidden;
  const factory AppAuthErrorState.error401({String? message}) = _AppErrorUnAuthenticated;
}
