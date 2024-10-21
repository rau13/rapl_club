import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/constants/routes/app_router.gr.dart';
import 'package:rapl_club/core/styles/colors.dart';
import 'package:rapl_club/core/styles/text_styles.dart';
import 'package:rapl_club/core/widgets/custom_button.dart';
import 'package:rapl_club/features/di/app_di.dart';
import 'package:rapl_club/features/home/constants/home_screen_constants.dart';
import 'package:rapl_club/features/home/data/repository/home_repository.dart';
import 'package:rapl_club/features/home/presentation/bloc/home_bloc.dart';
import 'package:rapl_club/features/home/presentation/bloc/home_event.dart';
import 'package:rapl_club/features/home/presentation/bloc/home_state.dart';
import 'package:rapl_club/features/home/presentation/widgets/custom_slider.dart';
import 'package:rapl_club/features/home/presentation/widgets/event_labels_list.dart';
import 'package:rapl_club/features/home/presentation/widgets/profiles_page_view.dart';
import 'package:rapl_club/features/home/presentation/widgets/requests_tabswitcher.dart';

class HomeScreen extends StatelessWidget implements AutoRouteWrapper {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(repository: appDi.get<HomeRepository>())..add(const LoadHomeData()),
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(child: Text('Welcome!')),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  loaded: (homeModel) => SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15.h),
                        CustomButton(
                          text: HomeScreenConstants.loginButtonText,
                          color: AppColors.white,
                          borderColor: AppColors.mainBlue,
                          textColor: AppColors.mainBlue,
                          width: HomeScreenConstants.buttonWidth.w,
                          onPressed: () => context.router.push(EnteringPhoneRoute()),
                        ),
                        SizedBox(height: 30.h),
                        CustomSlider(banners: homeModel.banners), // Pass banners to CustomSlider
                        SizedBox(height: 40.h),
                        Text(
                          HomeScreenConstants.residentsSectionTitle,
                          style: AppTextStyles.inter(
                            color: AppColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 14.h),
                        ProfilesPageView(residents: homeModel.residents), // Pass residents to ProfilesPageView
                        SizedBox(height: 40.h),
                        Text(
                          HomeScreenConstants.communicationSectionTitle,
                          style: AppTextStyles.inter(
                            color: AppColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 14.h),
                        SizedBox(
                          height: 350.h,
                          child: const TabSwitcher(),
                        ),
                        SizedBox(height: 40.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              HomeScreenConstants.eventsSectionTitle,
                              style: AppTextStyles.inter(
                                color: AppColors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  HomeScreenConstants.viewAllText,
                                  style: AppTextStyles.inter(
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 14.sp,
                                  color: AppColors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 14.h),
                        SizedBox(
                          height: 400.h,
                          child: EventLabelsList(events: homeModel.events), // Pass events to EventLabelsList
                        ),
                        SizedBox(height: 40.h),
                      ],
                    ),
                  ),
                  error: (message) => Center(child: Text('Error: $message')),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => appDi<HomeBloc>(),
      child: this,
    );
  }
}
