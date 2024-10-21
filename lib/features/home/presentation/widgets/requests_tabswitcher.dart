import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/styles/colors.dart';
import 'package:rapl_club/core/styles/text_styles.dart';
import 'package:rapl_club/features/home/presentation/widgets/request_item.dart';

class TabSwitcher extends StatefulWidget {
  const TabSwitcher({Key? key}) : super(key: key);

  @override
  _TabSwitcherState createState() => _TabSwitcherState();
}

class _TabSwitcherState extends State<TabSwitcher> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, dynamic>> requestData = [
    {
      'name': 'Денис Алексеенко',
      'title': 'Нужна консультация по оптимизаци...',
      'description': 'Ищу эксперта по налоговому планированию...',
      'location': 'г. Алматы',
      'time': 'Вчера, 10:30',
      'avatar': 'assets/denis.png',
      'nameColor': AppColors.mainYellow,
    },
    {
      'name': 'Георгий Закиров',
      'title': 'Нужна консультация по оптимизаци...',
      'description': 'Необходимы рекомендации по проверенным облачным...',
      'location': 'г. Алматы',
      'time': '15 мая 2024, 10:30',
      'avatar': 'assets/georgiy.png',
      'nameColor': AppColors.mainYellow,
    },
    {
      'name': 'Катерина Герман',
      'title': 'Нужна консультация по оптимизаци...',
      'description': 'Есть опытные профессионалы в области цифрового...',
      'location': 'г. Алматы',
      'time': '15 мая 2024, 10:30',
      'avatar': 'assets/katerina.png',
      'nameColor': AppColors.mainYellow,
    },
    {
      'name': 'Никита Барулин',
      'title': 'Кто знает хорошие тренинги по лидер...',
      'description': 'Нужны рекомендации по качественным тренингам...',
      'location': 'г. Алматы',
      'time': '15 мая 2024, 10:30',
      'avatar': 'assets/nikita.png',
      'nameColor': AppColors.mainYellow,
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          labelColor: AppColors.mainYellow,
          unselectedLabelColor: Colors.grey,
          indicatorColor: AppColors.mainYellow,
          labelStyle: AppTextStyles.inter(
            color: AppColors.mainYellow,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: AppTextStyles.inter(
            color: Colors.grey,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          tabs: const [
            Tab(text: 'Запросы'),
            Tab(text: 'Чат'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                itemCount: requestData.length,
                itemBuilder: (context, index) {
                  final request = requestData[index];
                  return Column(
                    children: [
                      RequestItem(
                        name: request['name'],
                        title: request['title'],
                        description: request['description'],
                        location: request['location'],
                        time: request['time'],
                        avatar: request['avatar'],
                        nameColor: request['nameColor'],
                      ),
                      if (index < requestData.length - 1) Divider(), // Add divider between items
                    ],
                  );
                },
              ),
              const Center(
                child: Text('Чат'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}