import 'package:ai_video_genarator/features/home/presentation/widgets/my_bottom_navbar.dart';
import 'package:flutter/material.dart';

class HomeMainPage extends StatelessWidget {
  //route
  static MaterialPageRoute<dynamic> route() =>
      MaterialPageRoute(builder: (context) => HomeMainPage());
  const HomeMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyBottomNavbar();
  }
}
