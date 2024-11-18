// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:rapl_club/features/application_for_membership/presentation/application_for_membership_screen.dart'
    as _i1;
import 'package:rapl_club/features/application_for_membership/presentation/application_for_membership_second_screen.dart'
    as _i2;
import 'package:rapl_club/features/auth/presentation/screens/entering_phone_screen.dart'
    as _i3;
import 'package:rapl_club/features/auth/presentation/screens/verify_code_screen.dart'
    as _i8;
import 'package:rapl_club/features/news_page/presentation/news_screen.dart'
    as _i5;
import 'package:rapl_club/features/onboarding/presentation/onboarding_screen.dart'
    as _i6;
import 'package:rapl_club/features/residents/residents_screen.dart' as _i7;
import 'package:rapl_club/initial_screen.dart' as _i4;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    ApplicationForMembershipRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ApplicationForMembershipScreen(),
      );
    },
    EnrollmentApplicationRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EnrollmentApplicationScreen(),
      );
    },
    EnteringPhoneRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.WrappedRoute(child: const _i3.EnteringPhoneScreen()),
      );
    },
    InitialRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.InitialScreen(),
      );
    },
    NewsRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.NewsScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.OnboardingScreen(),
      );
    },
    ResidentsRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ResidentsScreen(),
      );
    },
    VerifyCodeRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyCodeRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.WrappedRoute(
            child: _i8.VerifyCodeScreen(
          key: args.key,
          phone: args.phone,
        )),
      );
    },
  };
}

/// generated route for
/// [_i1.ApplicationForMembershipScreen]
class ApplicationForMembershipRoute extends _i9.PageRouteInfo<void> {
  const ApplicationForMembershipRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ApplicationForMembershipRoute.name,
          initialChildren: children,
        );

  static const String name = 'ApplicationForMembershipRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EnrollmentApplicationScreen]
class EnrollmentApplicationRoute extends _i9.PageRouteInfo<void> {
  const EnrollmentApplicationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          EnrollmentApplicationRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnrollmentApplicationRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EnteringPhoneScreen]
class EnteringPhoneRoute extends _i9.PageRouteInfo<void> {
  const EnteringPhoneRoute({List<_i9.PageRouteInfo>? children})
      : super(
          EnteringPhoneRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnteringPhoneRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.InitialScreen]
class InitialRoute extends _i9.PageRouteInfo<void> {
  const InitialRoute({List<_i9.PageRouteInfo>? children})
      : super(
          InitialRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitialRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NewsScreen]
class NewsRoute extends _i9.PageRouteInfo<void> {
  const NewsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnboardingScreen]
class OnboardingRoute extends _i9.PageRouteInfo<void> {
  const OnboardingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ResidentsScreen]
class ResidentsRoute extends _i9.PageRouteInfo<void> {
  const ResidentsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ResidentsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResidentsRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.VerifyCodeScreen]
class VerifyCodeRoute extends _i9.PageRouteInfo<VerifyCodeRouteArgs> {
  VerifyCodeRoute({
    _i10.Key? key,
    required String phone,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          VerifyCodeRoute.name,
          args: VerifyCodeRouteArgs(
            key: key,
            phone: phone,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyCodeRoute';

  static const _i9.PageInfo<VerifyCodeRouteArgs> page =
      _i9.PageInfo<VerifyCodeRouteArgs>(name);
}

class VerifyCodeRouteArgs {
  const VerifyCodeRouteArgs({
    this.key,
    required this.phone,
  });

  final _i10.Key? key;

  final String phone;

  @override
  String toString() {
    return 'VerifyCodeRouteArgs{key: $key, phone: $phone}';
  }
}
