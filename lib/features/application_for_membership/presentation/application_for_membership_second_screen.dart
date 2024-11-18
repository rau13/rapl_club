import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/styles/colors.dart';
import 'package:rapl_club/core/styles/text_styles.dart';


@RoutePage()
class EnrollmentApplicationScreen extends StatefulWidget {
  const EnrollmentApplicationScreen({super.key});

  @override
  State<EnrollmentApplicationScreen> createState() => _EnrollmentApplicationScreenState();
}

class _EnrollmentApplicationScreenState extends State<EnrollmentApplicationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Заявка на поступление'),
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Additional Information Header
            Text(
              'Дополнительная информация',
              style: AppTextStyles.inter(
                color: AppColors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text('Кратко и точно заполните информацию ниже', style: AppTextStyles.inter(
                color: AppColors.grey, fontSize: 11.sp, fontWeight: FontWeight.normal),),
            SizedBox(height: 16.h),
            Divider(),
            // Social Networks
            _buildSocialNetworkSection(),
            SizedBox(height: 16.h),
            Divider(),
            // Hobbies
            _buildHobbiesSection(),
            SizedBox(height: 16.h),
            Divider(),
            // Competencies
            _buildCompetenciesSection(),
            SizedBox(height: 16.h),
            Divider(),
            // Open Questions
            _buildOpenQuestionsSection(),
            SizedBox(height: 24.h),
            Divider(),
            // Submit Button
            Center(
              child: SizedBox(
                height: 44.h,
                width: 343.w,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle form submission
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainBlue,
                    padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 12.h),
                  ),
                  child: Text(
                    'Отправить заявку',
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialNetworkSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Социальные сети',
          style: AppTextStyles.inter(
            color: AppColors.black,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8.h),
        _buildSocialNetworkOption('Instagram'),
        SizedBox(height: 12.h,),
        _buildSocialNetworkOption('Facebook'),
        SizedBox(height: 24.0,),
        Text(
          'Мессенджеры',
          style: AppTextStyles.inter(
            color: AppColors.black,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        _buildSocialNetworkOption('Telegram'),
        SizedBox(height: 12.h,),
        _buildSocialNetworkOption('WhatsApp'),
      ],
    );
  }

  Widget _buildSocialNetworkOption(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.inter(
            color: AppColors.black,
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(
          width: 87.w,
          height: 33.h,
          child: ElevatedButton(
            onPressed: () {

            },
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                color: AppColors.mainBlue
              ),
              backgroundColor: AppColors.white,
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            ),
            child: Text('Добавить', style: TextStyle(color: AppColors.mainBlue, fontSize: 12.sp)),
          ),
        ),
      ],
    );
  }

  Widget _buildHobbiesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Хобби',
          style: AppTextStyles.inter(
            color: AppColors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        ..._buildHobbyOptions(),
      ],
    );
  }

  List<Widget> _buildHobbyOptions() {
    final competencies = ['Фотография', 'Чтение', 'Кулинария', 'Рисование'];
    return competencies
        .map((competency) => CheckboxListTile(
      title: Text(competency),
      value: false, // Update this based on your state management
      onChanged: (value) {
        // Handle competency selection
      },
    ))
        .toList();
  }

  Widget _buildCompetenciesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Компетенции',
          style: AppTextStyles.inter(
            color: AppColors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        ..._buildCompetencyOptions(),
      ],
    );
  }

  List<Widget> _buildCompetencyOptions() {
    final competencies = ['Критическое мышление', 'Креативное мышление', 'Коммуникация', 'Управление проектами'];
    return competencies
        .map((competency) => CheckboxListTile(
      title: Text(competency),
      value: false, // Update this based on your state management
      onChanged: (value) {
        // Handle competency selection
      },
    ))
        .toList();
  }

  Widget _buildOpenQuestionsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Открытые вопросы',
          style: AppTextStyles.inter(
            color: AppColors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8.h),
        _buildOpenQuestionTextField(
          label: 'Что привлекает вас в Rapl Club?',
          controller: TextEditingController(),
          maxLength: 200,
        ),
        SizedBox(height: 16.h),
        _buildOpenQuestionTextField(
          label: 'Какие ваши навыки и знания могут быть полезны для других членов клуба?',
          controller: TextEditingController(),
          maxLength: 200,
        ),
      ],
    );
  }

  Widget _buildOpenQuestionTextField({required String label, required TextEditingController controller, required int maxLength}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          maxLength: maxLength,
          maxLines: 4, // Limit the number of lines
          decoration: InputDecoration(
            labelText: label,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
        SizedBox(height: 8.h),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Осталось символов: ${maxLength - controller.text.length}',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildTextField(String hint) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
      ),
      maxLines: 2,
    );
  }
}
