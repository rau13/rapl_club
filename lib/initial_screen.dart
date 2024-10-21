import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'core/constants/initial_page/initial_assets.dart';
import 'core/constants/initial_page/initial_texts.dart';
import 'features/home/presentation/screens/home_screen.dart';

@RoutePage()
class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const Center(child: Text(InitialTexts.calendar, style: TextStyle(fontSize: 24))),
    const Center(child: Text(InitialTexts.residents, style: TextStyle(fontSize: 24))),
    const Center(child: Text(InitialTexts.communication, style: TextStyle(fontSize: 24))),
    const Center(child: Text(InitialTexts.services, style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.black,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: AppColors.black),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              InitialAssets.mainIcon,
              color: _selectedIndex == 0 ? AppColors.mainYellow : Colors.grey,
            ),
            label: InitialTexts.home,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              InitialAssets.calendarIcon,
              color: _selectedIndex == 1 ? AppColors.mainYellow : Colors.grey,
            ),
            label: InitialTexts.calendar,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              InitialAssets.residentsIcon,
              color: _selectedIndex == 2 ? AppColors.mainYellow : Colors.grey,
            ),
            label: InitialTexts.residents,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              InitialAssets.chatsIcon,
              color: _selectedIndex == 3 ? AppColors.mainYellow : Colors.grey,
            ),
            label: InitialTexts.communication,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              InitialAssets.menuIcon,
              color: _selectedIndex == 4 ? AppColors.mainYellow : Colors.grey,
            ),
            label: InitialTexts.services,
          ),
        ],
        selectedFontSize: 12.sp,
        unselectedFontSize: 12.sp,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}