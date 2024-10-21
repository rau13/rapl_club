import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/constants/routes/app_router.gr.dart';
import 'package:rapl_club/core/styles/colors.dart';
import 'package:rapl_club/features/home/data/models/banner_model.dart';
import 'custom_banner.dart';

class CustomSlider extends StatelessWidget {

  CustomSlider({Key? key, required this.banners}) : super(key: key);
  final List<BannerModel>? banners;
  final PageController _pageController = PageController();

  int _currentPage = 0;

  final List<Map<String, dynamic>> bannerData = [
    {
      'backgroundColor': AppColors.mainBlue,
      'title': 'Присоединяйся к Rapl Club',
      'subtitle': 'Станьте частью элитного сообщества',
      'imagePath': 'assets/product.png',
    },
    {
      'backgroundColor': AppColors.mainYellow,
      'title': 'Ваша вторая страница',
      'subtitle': 'Описание второй страницы',
      'imagePath': 'assets/product.png',
    },
    {
      'backgroundColor': AppColors.mainLightBlue,
      'title': 'Ваша третья страница',
      'subtitle': 'Описание третьей страницы',
      'imagePath': 'assets/product.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 140.h,
          child: PageView.builder(
            itemCount: banners!.length,
            itemBuilder: (context, index) {
              final banner = banners![index];
              return InkWell(
                onTap: () {
                  context.router.push(ApplicationForMembershipRoute());
                },
                child: CustomBanner(
                  backgroundColor: AppColors.mainBlue, // or use banner.backgroundColor if it's part of your model
                  title: banner.title,
                  subtitle: banner.description,
                  imagePath: banner.icon ?? '', // Provide a default image if icon is null
                ),
              );
            },
          ),
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            bannerData.length,
                (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 8.h,
              width: _currentPage == index ? 20.w : 8.w,
              decoration: BoxDecoration(
                color: _currentPage == index ? AppColors.mainYellow : Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}