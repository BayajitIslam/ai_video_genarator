import 'package:ai_video_genarator/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class BgGradient extends StatelessWidget {
  final Widget child;
  const BgGradient({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppPallete.blackGradient1, AppPallete.blackGradient2],
        ),
      ),
      child: child,
    );
  }
}
