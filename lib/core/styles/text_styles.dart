import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle inter({
    required Color color,
    required double fontSize,
    required FontWeight fontWeight,
    bool underlined_text = false,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize.sp,
      fontFamily: 'Inter',
      fontWeight: fontWeight,
      decoration: underlined_text ? TextDecoration.underline : TextDecoration.none,
      decorationColor: color,
    );
  }
}
