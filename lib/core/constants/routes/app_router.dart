import 'package:auto_route/auto_route.dart';
import 'package:rapl_club/features/application_for_membership/presentation/application_for_membership_screen.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page,  initial: true),
    AutoRoute(page: InitialRoute.page),
    AutoRoute(page: EnteringPhoneRoute.page),
    AutoRoute(page: ApplicationForMembershipRoute.page),
    AutoRoute(page: EnrollmentApplicationRoute.page),
    AutoRoute(page: VerifyCodeRoute.page),
    AutoRoute(page: ResidentsRoute.page),
    AutoRoute(page: NewsRoute.page),
  ];
}