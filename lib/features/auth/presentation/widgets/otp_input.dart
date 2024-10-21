import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/styles/colors.dart';

class OtpInput extends StatefulWidget {
  const OtpInput({Key? key}) : super(key: key);

  @override
  _OtpInputState createState() => _OtpInputState();
}

class _OtpInputState extends State<OtpInput> {
  List<FocusNode> _focusNodes = [];
  List<TextEditingController> _controllers = [];

  @override
  void initState() {
    super.initState();
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
    super.dispose();
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

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) => _buildOtpBox(index)),
    );
  }
}
