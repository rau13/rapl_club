import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/styles/colors.dart';
import 'package:rapl_club/core/styles/text_styles.dart';

class CustomBanner extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String subtitle;
  final String imagePath;

  const CustomBanner({
    Key? key,
    required this.backgroundColor,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 327.w,
          padding: EdgeInsets.all(10.r),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 180.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.inter(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      subtitle,
                      style: AppTextStyles.inter(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                  height: 64.h,
                  width: 64.h,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 8.w),
      ],
    );
  }
}