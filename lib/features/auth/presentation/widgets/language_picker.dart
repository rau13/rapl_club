import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/styles/colors.dart';

import '../../../../core/styles/text_styles.dart';

class LanguagePicker extends StatefulWidget {
  const LanguagePicker({Key? key}) : super(key: key);

  @override
  _LanguagePickerState createState() => _LanguagePickerState();
}

class _LanguagePickerState extends State<LanguagePicker> {
  String _selectedLanguage = 'Русский';
  String _selectedFlag = 'assets/auth/flags/russia.png';

  final List<Map<String, String>> _languages = [
    {'name': 'Русский', 'flag': 'assets/auth/flags/russia.png'},
    {'name': 'Казахский', 'flag': 'assets/auth/flags/kazakhstan.png'},
    {'name': 'Английский', 'flag': 'assets/auth/flags/usa.png'},
    {'name': 'Узбекский', 'flag': 'assets/auth/flags/uzbekistan.png'},
    {'name': 'Немецкий', 'flag': 'assets/auth/flags/germany.png'},
  ];

  void _openLanguagePicker() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          height: 400.h,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Выберите язык',
                      style: AppTextStyles.inter(
                        color: AppColors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () => context.router.pop(),
                      child: const Icon(
                        Icons.close,
                        color: AppColors.grey,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: ListView.builder(
                  itemCount: _languages.length,
                  itemBuilder: (context, index) {
                    final language = _languages[index];
                    return Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            language['flag']!,
                            width: 32.w,
                            height: 20.h,
                          ),
                          title: Text(language['name']!),
                          trailing: _selectedLanguage == language['name']
                              ? Icon(Icons.check, color: AppColors.mainYellow)
                              : null,
                          onTap: () {
                            setState(() {
                              _selectedLanguage = language['name']!;
                              _selectedFlag = language['flag']!;
                            });
                            Navigator.pop(context);
                          },
                        ),
                        Divider()
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _openLanguagePicker,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            _selectedFlag,
            width: 32.w,
            height: 20.h,
          ),
          SizedBox(width: 8.w),
          Text(
            _selectedLanguage,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 8.w),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.grey,
            size: 20.sp,
          ),
        ],
      ),
    );
  }
}
