import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/styles/colors.dart';
import 'package:rapl_club/core/styles/text_styles.dart';


@RoutePage()
class ResidentsScreen extends StatefulWidget {
  const ResidentsScreen({super.key});

  @override
  State<ResidentsScreen> createState() => _ResidentsScreenState();
}

class _ResidentsScreenState extends State<ResidentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Резиденты'),
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchField(),
            SizedBox(height: 16.h),
            _buildResidentCard(
              name: 'Иванов Сергей',
              additionalStatus: 'Совет вдохновителей (г. Астана)',
              company: 'ООО "Инновации и технологии"',
              competencies: ['Критическое мышление', 'Решение проблем', 'Коммуникации'],
            ),
            _buildResidentCard(
              name: 'Кузнецов Михаил',
              additionalStatus: 'Локальный представитель (г. Астана)',
              company: 'ZAO "Маркетинговые стратегии"',
              competencies: ['Критическое мышление', 'Решение проблем', 'Коммуникации'],
            ),
            _buildResidentCard(
              name: 'Смирнова Елена',
              additionalStatus: 'Восходящая звезда',
              company: 'АО "AstraFinance"',
              competencies: ['Критическое мышление', 'Решение проблем', 'Коммуникации'],
            ),
            _buildResidentCard(
              name: 'Кузнецов Михаил',
              additionalStatus: 'Локальный представитель (г. Астана)',
              company: 'ZAO "Маркетинговые стратегии"',
              competencies: ['Критическое мышление', 'Решение проблем', 'Коммуникации'],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Поиск',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

  Widget _buildResidentCard({
    required String name,
    required String additionalStatus,
    required String company,
    required List<String> competencies,
  }) {
    return Card(
      color: Colors.white,
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8.h),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.mainYellow,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Text(
                    name,
                    style: AppTextStyles.inter(
                      color: AppColors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              additionalStatus,
              style: AppTextStyles.inter(
                color: Colors.grey,
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              company,
              style: AppTextStyles.inter(
                color: AppColors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Компетенции: ${competencies.join(', ')}',
              style: AppTextStyles.inter(
                color: AppColors.grey,
                fontSize: 12.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 12.h),
            Divider(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle selection action
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(
                    color: AppColors.mainBlue
                  ),
                  backgroundColor: AppColors.white,
                ),
                child: Text('В избранное', style: TextStyle(
                  color: AppColors.mainBlue
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
