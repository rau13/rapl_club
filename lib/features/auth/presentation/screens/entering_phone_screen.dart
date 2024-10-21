import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/constants/routes/app_router.gr.dart';
import 'package:rapl_club/core/styles/colors.dart';
import 'package:rapl_club/core/styles/text_styles.dart';
import 'package:rapl_club/core/widgets/custom_button.dart';
import 'package:rapl_club/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rapl_club/features/auth/presentation/bloc/auth_event.dart';
import 'package:rapl_club/features/auth/presentation/bloc/auth_state.dart';
import 'package:rapl_club/features/auth/presentation/widgets/country_code_picker.dart';
import 'package:rapl_club/features/auth/presentation/widgets/logo_with_stars.dart';
import 'package:rapl_club/features/auth/presentation/widgets/phone_text_field.dart';
import '../../constants/entering_phone_constants.dart';
import 'package:rapl_club/features/di/app_di.dart';

@RoutePage()
class EnteringPhoneScreen extends StatefulWidget implements AutoRouteWrapper {
  const EnteringPhoneScreen({super.key});

  @override
  State<EnteringPhoneScreen> createState() => _EnteringPhoneScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => appDi<AuthBloc>(),
      child: this,
    );
  }
}

class _EnteringPhoneScreenState extends State<EnteringPhoneScreen> {
  final FocusNode _focusNode = FocusNode();
  final MaskedTextController _phoneController = MaskedTextController(mask: '(000) 000 00 00');
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  String get formattedPhone {
    // Get the phone number and ensure it starts with '+7'
    final phone = _phoneController.text.replaceAll(RegExp(r'\D'), ''); // Remove non-digit characters
    return '+7$phone'; // Prepend '+7' to the phone number
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LogoWithStars(),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      EnteringPhoneConstants.title,
                      style: AppTextStyles.inter(
                        color: AppColors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      EnteringPhoneConstants.description,
                      style: AppTextStyles.inter(
                        color: AppColors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    Text(
                      EnteringPhoneConstants.phoneLabel,
                      style: AppTextStyles.inter(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Row(
                      children: [
                        const CountryCodePicker(),
                        SizedBox(width: 6.w),
                        Expanded(
                          child: TextField(
                            controller: _phoneController,
                            focusNode: _focusNode,
                            keyboardType: TextInputType.phone,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              hintText: '000 000 00 00',
                              hintStyle: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.grey,
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                  width: 1.w,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.mainBlue,
                                  width: 1.w,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),

                    BlocListener<AuthBloc, AuthState>(
                      listener: (context, state) {
                        if (state is SmsSentState) {
                          context.router.push(VerifyCodeRoute());
                        } else if (state is ErrorState) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(state.message)),
                          );
                        }
                      },
                      child: CustomButton(
                        text: EnteringPhoneConstants.nextButton,
                        color: AppColors.mainBlue,
                        borderColor: AppColors.mainBlue,
                        textColor: AppColors.white,
                        width: 373.w,
                        height: 48.h,
                        onPressed: () {
                          final phone = formattedPhone;
                          print(phone);
                          context.read<AuthBloc>().add(SendSmsEvent(phone));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
