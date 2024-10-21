import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/colors.dart';

class LogoWithStars extends StatelessWidget {
  const LogoWithStars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 245.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      color: AppColors.mainBlue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60.h,
          ),
          InkWell(
            onTap: () => context.router.pop(),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.white,
              size: 22.sp,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Image.asset(
              "assets/auth/background.png",
            ),
          ),
        ],
      ),
    );
  }
}
