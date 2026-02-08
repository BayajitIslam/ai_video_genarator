import 'package:ai_video_genarator/core/theme/app_theme.dart';
import 'package:ai_video_genarator/features/auth/presentation/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appDarkTheme,
      home: SignUpPage(),
    );
  }
}
