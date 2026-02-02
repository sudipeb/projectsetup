import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:projectsetup/features/onboarding/onboarding_page.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page, initial: true),
    // AutoRoute(
    //   page: OnboardingWrapperRoute.page,
    //   initial: true,
    //   children: [AutoRoute(page: SocialLoginRoute.page, initial: true)],
    // ),
    // AutoRoute(page: ActiveSubscriptionRoute.page),
  ];
}
