import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:simplex/core/simplex_auth_event_bus.dart';

part 'app_auth_error_cubit.freezed.dart';
part 'app_auth_error_state.dart';

@injectable
class AppAuthErrorCubit extends Cubit<AppAuthErrorState> {
  AppAuthErrorCubit() : super(const AppAuthErrorState.initial()) {
    SimplexAuthEventBus _authEventBus = SimplexAuthEventBus.instance;
    _subscription = _authEventBus.events.listen((AuthEvent authEvent) {
      switch (authEvent.type) {
        case AuthErrorType.unAuthenticated:
          emit(AppAuthErrorState.error401(message: authEvent.message));
          break;
        case AuthErrorType.forbidden:
          emit(AppAuthErrorState.error403(message: authEvent.message));
          break;
        case AuthErrorType.sessionExpired:
          emit(AppAuthErrorState.error401(message: authEvent.message));
      }
    });
  }

  late final StreamSubscription<AuthEvent> _subscription;

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
