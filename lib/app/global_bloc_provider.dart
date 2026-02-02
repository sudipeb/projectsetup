import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';
import 'package:projectsetup/app/presentation/blocs/app_cubit.dart';
import 'package:projectsetup/app/presentation/blocs/auth_error/app_auth_error_cubit.dart';
import 'package:projectsetup/core/di/injector.dart';

class GlobalBlocProvider extends StatelessWidget {
  const GlobalBlocProvider({required this.child, Key? key}) : super(key: key);

  final Widget child;

  @override
  Widget build(_) => MultiBlocProvider(
    providers: <SingleChildWidget>[
      BlocProvider<AppCubit>(create: (_) => getIt<AppCubit>()),
      BlocProvider<AppAuthErrorCubit>(create: (_) => getIt<AppAuthErrorCubit>()),
      // BlocProvider<SocialLoginCubit>(create: (_) => getIt<SocialLoginCubit>()),
      // BlocProvider<TimerCubit>(create: (_) => getIt<TimerCubit>()),
      // BlocProvider(create: (context) => getIt<LocationPermissionCubit>()..init()),

      // BlocProvider(create: (_) => getIt<PurchaseCubit>()),
      // BlocProvider(create: (_) => getIt<VerifyPurchaseCubit>()),
      // BlocProvider(create: (_) => getIt<ActiveSubscriptionCubit>()),
    ],
    child: child,
  );
}
