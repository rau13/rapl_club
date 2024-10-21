import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/constants/routes/app_router.gr.dart';
import 'package:rapl_club/core/styles/colors.dart';
import 'package:rapl_club/core/styles/text_styles.dart';
import 'package:rapl_club/core/widgets/custom_button.dart';
import 'package:rapl_club/features/auth/constants/entering_phone_constants.dart';
import '../../constants/verify_code_constants.dart';
import '../widgets/otp_input.dart';

@RoutePage()
class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  late Timer _timer;

  int _start = 60;
 // Начать обратный отсчет с 60 секунд
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  SizedBox(height: 60.h),
                  Row(
                    children: [
                      InkWell(
                        onTap: () => context.router.maybePop(),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColors.black,
                          size: 22.sp,
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Text(
                        VerifyCodeConstants.enterCodeTitle, // Using constant
                        style: AppTextStyles.inter(
                          color: AppColors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 155.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              color: AppColors.mainBlue,
              child: Center(
                child: Image.asset(
                  VerifyCodeConstants.backgroundImage, // Using asset constant
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    VerifyCodeConstants.smsMessage, // Using constant
                    style: AppTextStyles.inter(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 32.h),
                  const OtpInput(),
                  SizedBox(height: 24.h),
                  Text(
                    _start > 0 ? "Отправить повторно через $_start секунд" : "Отправить повторно", // Using constant
                    style: AppTextStyles.inter(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 24.0,),
                  CustomButton(
                    text: EnteringPhoneConstants.nextButton, // Using the constant
                    color: AppColors.mainBlue,
                    borderColor: AppColors.mainBlue,
                    textColor: AppColors.white,
                    width: 373.w,
                    height: 48.h,
                    onPressed: () => context.router.push(const InitialRoute()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}