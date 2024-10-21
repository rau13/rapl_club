import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/styles/colors.dart';
import 'package:rapl_club/core/styles/text_styles.dart';

class CustomProfileCard extends StatelessWidget {
  final String avatarUrl;
  final String name;
  final String status;
  final String company;
  final int companyCount;
  final List<String> skills;
  final String additionalStatus;

  const CustomProfileCard({
    Key? key,
    required this.avatarUrl,
    required this.name,
    required this.status,
    required this.company,
    required this.companyCount,
    required this.skills,
    required this.additionalStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      padding: EdgeInsets.fromLTRB(16.w, 4.h, 16.w, 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: const Color(0xFFF5E0BE),
          width: 1.w,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24.r,
                  backgroundImage: NetworkImage(avatarUrl),
                ),
                SizedBox(width: 12.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: AppTextStyles.inter(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.verified, color: AppColors.mainYellow, size: 16.sp),
                        SizedBox(width: 4.w),
                        Text(
                          status,
                          style: AppTextStyles.inter(
                            color: AppColors.mainYellow,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Text(
              'Дополнительный статус',
              style: AppTextStyles.inter(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              '$additionalStatus',
              style: AppTextStyles.inter(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              'Компании',
              style: AppTextStyles.inter(
                color: Colors.grey,
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 4.h),
            Row(
              children: [
                Expanded(
                  child: Text(
                    company,
                    style: AppTextStyles.inter(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Text(
                    '+$companyCount',
                    style: AppTextStyles.inter(
                      color: AppColors.mainYellow,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Text(
              'Компетенции',
              style: AppTextStyles.inter(
                color: Colors.grey,
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 8.h),
            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children: skills.map((skill) => _buildSkillChip(skill)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillChip(String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        label,
        style: AppTextStyles.inter(
          color: Colors.black,
          fontSize: 12.sp,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
