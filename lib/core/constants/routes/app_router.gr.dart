// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:rapl_club/features/application_for_membership/presentation/application_for_membership_screen.dart'
    as _i1;
import 'package:rapl_club/features/auth/presentation/screens/entering_phone_screen.dart'
    as _i2;
import 'package:rapl_club/features/auth/presentation/screens/verify_code_screen.dart'
    as _i5;
import 'package:rapl_club/features/onboarding/presentation/onboarding_screen.dart'
    as _i4;
import 'package:rapl_club/initial_screen.dart' as _i3;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    ApplicationForMembershipRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ApplicationForMembershipScreen(),
      );
    },
    EnteringPhoneRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EnteringPhoneScreen(),
      );
    },
    InitialRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.InitialScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.OnboardingScreen(),
      );
    },
    VerifyCodeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.VerifyCodeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.ApplicationForMembershipScreen]
class ApplicationForMembershipRoute extends _i6.PageRouteInfo<void> {
  const ApplicationForMembershipRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ApplicationForMembershipRoute.name,
          initialChildren: children,
        );

  static const String name = 'ApplicationForMembershipRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EnteringPhoneScreen]
class EnteringPhoneRoute extends _i6.PageRouteInfo<void> {
  const EnteringPhoneRoute({List<_i6.PageRouteInfo>? children})
      : super(
          EnteringPhoneRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnteringPhoneRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.InitialScreen]
class InitialRoute extends _i6.PageRouteInfo<void> {
  const InitialRoute({List<_i6.PageRouteInfo>? children})
      : super(
          InitialRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitialRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.OnboardingScreen]
class OnboardingRoute extends _i6.PageRouteInfo<void> {
  const OnboardingRoute({List<_i6.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.VerifyCodeScreen]
class VerifyCodeRoute extends _i6.PageRouteInfo<void> {
  const VerifyCodeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          VerifyCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyCodeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
