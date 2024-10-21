import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/styles/colors.dart';

class PhoneTextField extends StatefulWidget {
  const PhoneTextField({Key? key}) : super(key: key);

  @override
  _PhoneTextFieldState createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
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

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
