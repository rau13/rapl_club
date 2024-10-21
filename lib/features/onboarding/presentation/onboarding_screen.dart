import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/core/constants/routes/app_router.gr.dart';
import 'package:rapl_club/features/onboarding/data/models/onboarding_model.dart';


@RoutePage()
class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<OnboardingData> _pages = [
    OnboardingData(
      image: 'assets/onboarding_image_2.png',
      title: 'Добро пожаловать в Rapl Club',
      description: 'Присоединяйтесь к сообществу успешных предпринимателей. Исследуйте резидентов клуба и их уникальные услуги, чтобы найти новые возможности для роста.',
    ),
    OnboardingData(
      image: 'assets/onboarding_image_2.png',
      title: 'Более 100 событий в год',
      description: 'Участвуйте в эксклюзивных онлайн и оффлайн событиях. Расширяйте свои контакты и находите единомышленников для совместного развития и сотрудничества',
    ),
    OnboardingData(
      image: 'assets/onboarding_image_2.png',
      title: 'Привлекайте инвестиции',
      description: 'Открывайте новые возможности для вашего бизнеса. В RAPL club вы найдете поддержку и ресурсы для воплощения ваших идей и проектов в жизнь',
    ),
  ];

  void _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _onNextPressed() {
    if (_currentPage == _pages.length - 1) {
      // Navigate to the next screen when on the last page
      context.router.push(InitialRoute()); // Replace with your desired route
    } else {
      // Go to the next page
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: _onChanged,
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              return OnboardingPage(data: _pages[index]);
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              height: 311.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(24.0)
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    _pages[_currentPage].title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _pages[_currentPage].description,
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(_pages.length, (index) => buildDot(index, context)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 44.h,
                    child: ElevatedButton(
                      onPressed: () {
                        _onNextPressed();
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                            Color(0xff1E2130))
                      ),
                      child: Text('Далее', style: TextStyle(
                        color: Colors.white
                      ),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: _currentPage == index ? Color(0xff1E2130): Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final OnboardingData data;

  const OnboardingPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(data.image, fit: BoxFit.fill,),
        // Текст и кнопка уже обработаны в другом виджете
      ],
    );
  }
}