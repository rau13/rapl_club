import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/styles/colors.dart';
import 'package:rapl_club/core/styles/text_styles.dart';

class EventCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String eventType;
  final String location;
  final String dateTime;
  final String accessLevel;

  const EventCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.eventType,
    required this.location,
    required this.dateTime,
    required this.accessLevel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.mainYellow,
          width: 0.5.w,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                  width: 70.w,
                  height: 70.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.inter(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      eventType,
                      style: AppTextStyles.inter(
                        color: Colors.green,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.orange, size: 16.sp),
                        SizedBox(width: 4.w),
                        Expanded(
                          child: Text(
                            location,
                            style: AppTextStyles.inter(
                              color: Colors.grey[700]!,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.normal,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.orange, size: 16.sp),
                        SizedBox(width: 4.w),
                        Text(
                          dateTime,
                          style: AppTextStyles.inter(
                            color: Colors.grey[700]!,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Уровни доступа:',
                      style: AppTextStyles.inter(
                        color: Colors.grey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: const Color(0xFFDCE7FF),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        accessLevel,
                        style: AppTextStyles.inter(
                          color: const Color(0xFF5D78F6),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}