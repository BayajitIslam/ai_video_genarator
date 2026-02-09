import 'package:ai_video_genarator/core/constant/app_icons.dart';
import 'package:ai_video_genarator/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:ai_video_genarator/features/auth/presentation/pages/sign_In_page.dart';
import 'package:ai_video_genarator/features/auth/presentation/pages/sign_up_page.dart';
import 'package:ai_video_genarator/features/home/presentation/pages/home_page.dart';
import 'package:ai_video_genarator/features/home/presentation/widgets/gradient_icon.dart';
import 'package:flutter/material.dart';

class MyBottomNavbar extends StatefulWidget {
  const MyBottomNavbar({super.key});

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int _currentIndex = 0;

  List<Widget> pages = [
    HomePage(),
    SignInPage(),
    SignUpPage(),
    ForgotPasswordPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: GradientIcon(
              icon: AppIcons.home,
              isSelected: _currentIndex == 0,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: GradientIcon(
              icon: AppIcons.genarate,
              isSelected: _currentIndex == 1,
            ),
            label: "Genarate",
          ),
          BottomNavigationBarItem(
            icon: GradientIcon(
              icon: AppIcons.video,
              isSelected: _currentIndex == 2,
            ),
            label: "Videos",
          ),
          BottomNavigationBarItem(
            icon: GradientIcon(
              icon: AppIcons.profile,
              isSelected: _currentIndex == 3,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
