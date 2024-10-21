import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:rapl_club/features/di/app_di.dart';

import 'core/constants/routes/app_router.dart';

void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeData(
            primaryColor: Colors.black,
          ),
          debugShowCheckedModeBanner: false,
          routerDelegate: AutoRouterDelegate(_appRouter),
          routeInformationParser: _appRouter.defaultRouteParser(),
        );
      },
    );
  }
}