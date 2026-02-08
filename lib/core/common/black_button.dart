import 'package:ai_video_genarator/core/theme/app_pallete.dart';
import 'package:ai_video_genarator/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const BlackButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: AlignmentGeometry.centerLeft,
          end: AlignmentGeometry.centerRight,
          colors: [AppPallete.blackGradient4, AppPallete.blackGradient1],
        ),
        boxShadow: [
          BoxShadow(
            color: AppPallete.dropShadowColor,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
          foregroundColor: AppPallete.transparentColor,
          overlayColor: AppPallete.transparentColor,
        ),
        child: Text(text, style: Theme.of(context).textTheme.titleSmall),
      ),
    );
  }
}
