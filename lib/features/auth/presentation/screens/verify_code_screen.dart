import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rapl_club/core/constants/routes/app_router.gr.dart';
import 'package:rapl_club/core/styles/colors.dart';
import 'package:rapl_club/core/styles/text_styles.dart';
import 'package:rapl_club/core/widgets/custom_button.dart';
import 'package:rapl_club/features/auth/constants/entering_phone_constants.dart';
import 'package:rapl_club/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rapl_club/features/auth/presentation/bloc/auth_event.dart';
import 'package:rapl_club/features/auth/presentation/widgets/otp_input.dart';
import '../../../di/app_di.dart';
import '../../constants/verify_code_constants.dart';

@RoutePage()
class VerifyCodeScreen extends StatefulWidget implements AutoRouteWrapper {
  final String phone; // Add phone parameter to receive phone number
  const VerifyCodeScreen({super.key, required this.phone}); // Require the phone number

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();

  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => appDi<AuthBloc>(),
      child: this,
    );
  }
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  late Timer _timer;
  int _start = 60;
  List<FocusNode> _focusNodes = [];
  List<TextEditingController> _controllers = [];

  @override
  void initState() {
    super.initState();
    startTimer();
    _focusNodes = List.generate(4, (index) => FocusNode());
    _controllers = List.generate(4, (index) => TextEditingController());
  }

  @override
  void dispose() {
    for (final focusNode in _focusNodes) {
      focusNode.dispose();
    }
    for (final controller in _controllers) {
      controller.dispose();
    }
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
                        VerifyCodeConstants.enterCodeTitle,
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
                  VerifyCodeConstants.backgroundImage,
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
                    VerifyCodeConstants.smsMessage,
                    style: AppTextStyles.inter(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 32.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (index) => _buildOtpBox(index)),
                ), // Use the controller
                  SizedBox(height: 24.h),
                  Text(
                    _start > 0 ? "Отправить повторно через $_start секунд" : "Отправить повторно",
                    style: AppTextStyles.inter(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 24.0,),
                  CustomButton(
                    text: EnteringPhoneConstants.nextButton,
                    color: AppColors.mainBlue,
                    borderColor: AppColors.mainBlue,
                    textColor: AppColors.white,
                    width: 373.w,
                    height: 48.h,
                    onPressed: () {
                      final code = "0000"; // Get OTP input
                      context.read<AuthBloc>().add(VerifySmsEvent("77013150052", code));
                      context.router.push(InitialRoute());// Dispatch event
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildOtpBox(int index) {
    return Container(
      width: 50.w,
      height: 50.h,
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      child: TextField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 18.sp),
        maxLength: 1,
        cursorColor: AppColors.mainBlue,
        decoration: InputDecoration(
          counterText: "",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: AppColors.mainBlue, width: 1),
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty && index < 3) {
            _focusNodes[index].unfocus();
            FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
          }
        },
      ),
    );
  }
}
