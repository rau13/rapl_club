import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/styles/colors.dart';
import 'package:rapl_club/core/styles/text_styles.dart';

class CountryCodePicker extends StatefulWidget {
  const CountryCodePicker({Key? key}) : super(key: key);

  @override
  _CountryCodePickerState createState() => _CountryCodePickerState();
}

class _CountryCodePickerState extends State<CountryCodePicker> {
  String _selectedCode = '+7';

  final List<Map<String, String>> _countryCodes = [
    {'country': 'Россия', 'code': '+7'},
    {'country': 'Беларусь', 'code': '+375'},
    {'country': 'Казахстан', 'code': '+58'},
  ];

  void _openCountryCodePicker() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
          ),
          height: 500.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Выберите город',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () => context.router.pop(),
                      child: Icon(
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
                  itemCount: _countryCodes.length,
                  itemBuilder: (context, index) {
                    final country = _countryCodes[index];
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            '${country['country']} ${country['code']}',
                            style: AppTextStyles.inter(
                              color: AppColors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: _selectedCode == country['code']
                              ? const Icon(Icons.check,
                                  color: AppColors.mainYellow)
                              : null,
                          onTap: () {
                            setState(() {
                              _selectedCode = country['code']!;
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
      onTap: _openCountryCodePicker,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: Colors.grey.shade300, width: 1.w),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _selectedCode,
              style: AppTextStyles.inter(
                color: AppColors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(width: 8.w),
            Icon(
              Icons.arrow_drop_down,
              color: AppColors.grey,
              size: 20.sp,
            ),
          ],
        ),
      ),
    );
  }
}
