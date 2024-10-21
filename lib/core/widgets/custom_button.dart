import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/styles/text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color borderColor;
  final Color textColor;
  final double width;
  final double height;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.color,
    required this.borderColor,
    required this.textColor,
    required this.width,
    this.height = 40.0,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textColor,
          side: BorderSide(
            color: borderColor,
            width: 1.w,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0.r),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyles.inter(
            color: textColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        )
      ),
    );
  }
}
