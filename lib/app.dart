import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested/nested.dart';
import 'package:projectsetup/app/global_bloc_provider.dart';
import 'package:projectsetup/app/presentation/blocs/app_cubit.dart';
import 'package:projectsetup/app/presentation/blocs/auth_error/app_auth_error_cubit.dart';
import 'package:projectsetup/core/di/injector.dart';
import 'package:projectsetup/core/helper/adaptive_ui_helper.dart';
import 'package:projectsetup/core/routes/app_router.dart';


class App extends StatelessWidget {
  App({super.key});

  final AppRouter _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) => GlobalBlocProvider(
    child: MultiBlocListener(
      listeners: <SingleChildWidget>[
        BlocListener<AppAuthErrorCubit, AppAuthErrorState>(
          listener: (BuildContext blocCotext, AppAuthErrorState state) {
            state.maybeWhen(
              orElse: () {},
              error401: (String? message) async {
                // await BlocReset.resetGlobalBloc(blocCotext);
                // _appRouter.replaceAll(<PageRouteInfo<Object?>>[
                //   OnboardingWrapperRoute(),
                // ]);
              },

              error403: (String? message) async {
                // await BlocReset.resetGlobalBloc(blocCotext);
                // _appRouter.replaceAll(<PageRouteInfo<Object?>>[
                //   OnboardingWrapperRoute(),
                // ]);
              },
            );
          },
        ),
        BlocListener<AppCubit, AppState>(
          listener: (BuildContext _, AppState state) {
            state.when(
              initial: () {
                _appRouter.push(OnboardingRoute());
              },
              authenticated: () {
                // _appRouter.replaceAll([HomeRoute()]);
              },
              unAuthenticated: (String? message) {
                // _appRouter.push(OnboardingWrapperRoute());
              },
            );
          },
        ),
      ],
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
        child: ScreenUtilInit(
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (BuildContext context, Widget? child) {
            AdaptiveUIHelper.initDevice(context);
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              // localizationsDelegates: <LocalizationsDelegate>[
              //   AppLocalizations.delegate,
              //   GlobalMaterialLocalizations.delegate,
              //   GlobalWidgetsLocalizations.delegate,
              //   GlobalCupertinoLocalizations.delegate,
              // ],
              // theme: AppTheme.appTheme,
              // supportedLocales: AppLocalizations.delegate.supportedLocales,
              builder: (BuildContext context, Widget? child) {
                return child!;
              },
              routerConfig: _appRouter.config(
                navigatorObservers: () => [AutoRouteObserver()],
              ),
            );
          },
        ),
      ),
    ),
  );
}
