import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/styles/text_styles.dart';

import '../../../../core/styles/colors.dart';

class RequestItem extends StatelessWidget {
  final String name;
  final String title;
  final String description;
  final String location;
  final String time;
  final String avatar;
  final Color nameColor;

  const RequestItem({
    Key? key,
    required this.name,
    required this.title,
    required this.description,
    required this.location,
    required this.time,
    required this.avatar,
    required this.nameColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24.r,
            backgroundImage: AssetImage(avatar),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: AppTextStyles.inter(
                        color: nameColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(Icons.verified, color: AppColors.mainYellow, size: 16.sp),
                  ],
                ),
                Text(
                  title,
                  style: AppTextStyles.inter(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Text(
                  description,
                  style: AppTextStyles.inter(
                    color: Colors.grey,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.normal,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      location,
                      style: AppTextStyles.inter(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      time,
                      style: AppTextStyles.inter(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}