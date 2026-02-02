import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

/// AppCubit is responsible for managing the app’s **global authentication flow on APP Startup only**.
///
/// It listens to session changes,
/// determines the correct state (unauthenticated, or needs profile setup, email verification),
/// and removes the splash screen once the initial session check is complete.
///
/// It acts as the entry point for deciding which screen to show first
/// — login, home, or profile creation.
@injectable
class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial()) {
    unawaited(checkSession());
  }

  // final AuthRepository _repository;
  Timer? _timer;

  /// Handles the logic executed after a user successfully logs in.
  ///
  /// This method:
  /// 1. Removes the native splash screen once the app is ready.
  /// 2. Fetches the currently logged-in user from the repository.
  /// 3. Determines the correct [AppState] to emit based on user data and subscription status.
  ///
  /// Logic flow:
  /// - If no user is found → emits [AppState.unAuthenticated].
  /// - If user exists but missing required profile info → emits [AppState.createProfile].
  /// - If user has a subscription, checks validity:
  ///   - If the subscription is invalid or expired → emits [AppState.noSubscription].
  /// - Otherwise → emits [AppState.authenticated].
  Future<void> _startApp() async {
    // Execute login validation on a microtask to ensure event loop completion.
    await Future<void>.microtask(() async {
      // Retrieve the logged-in user data.
      // final User? user = await _repository.loggedInUser;

      // final VerifyEmailModel? unverified = await _repository.unverifiedEmail;

      // if (unverified != null) {
      //   emit(AppState.unverifiedEmail(unverified));
      //   return;
      // }

      // Case 1: No user found → unauthenticated state.
      // if (user == null) {
      //   emit(const AppState.unAuthenticated());
      //   return;
      // }

      // Case 2: User exists but missing profile info → requires profile creation.
      // if (user.firstName.isNullOrEmpty) {
      //   emit(AppState.createProfile(user));
      //   return;
      // }

      // Case 3: User has a subscription → check its validity.
      // final bool isSubscribed = _subscriptionRepo.checkValidSubscription();
      //
      // if (!isSubscribed) {
      //   emit(const AppState.noSubscription());
      //   return;
      // }

      // Case 4: All checks passed → user is fully authenticated.
      emit(const AppState.authenticated());
    });
  }

  /// Handles logic when a user is logged out or not verified.
  ///
  /// - If there’s no unverified email data → emit unauthenticated.
  /// - If unverified email exists → emit unverifiedEmail state.
  void _logoutUser() {
    emit(const AppState.unAuthenticated());
  }

  Future<void> checkSession() async {
    // final bool? isTokenExpired = await _repository.isTokenExpired;
    // final bool hasNoSession = isTokenExpired != null && isTokenExpired;

    // (hasNoSession ? _logoutUser() : await _startApp());
    // await Future<dynamic>.delayed(const Duration(milliseconds: 500));
    // FlutterNativeSplash.remove();
  }

  /// Track user subscription expiry
  void trackSubscriptionExpiry() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      _checkSubscriptionExpiry();
    });
  }

  //Stops the timer
  // void _stopChecking() {
  //   _timer?.cancel();
  // }

  void _checkSubscriptionExpiry() {
    // final SubscriptionDetailsModel? subscription = _getSubscription;
    // DateTime? expiryDate = subscription?.expirationDate;
    // if (subscription == null) {
    //   _timer?.cancel();
    //   return;
    // }
    //
    // if (expiryDate == null || !_isNotExpired(expiryDate)) {
    //   notifySubscriptionExpiry();
    //   return;
    // }
  }

  /// On subscription expired
  // void notifySubscriptionExpiry() {
  //   _stopChecking();
  //   emit(const AppState.noSubscription());
  //   return;
  // }

  // bool _isNotExpired(DateTime expiryDate) {
  //   return DateTimeX.now.isBefore(expiryDate);
  // }
}
