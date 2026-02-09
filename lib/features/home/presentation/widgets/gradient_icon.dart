import 'package:ai_video_genarator/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GradientIcon extends StatelessWidget {
  final String icon;
  final bool isSelected;
  final double size;
  final Gradient gradient;

  const GradientIcon({
    required this.icon,
    required this.isSelected,
    this.size = 24,
    this.gradient = const LinearGradient(
      colors: [AppPallete.gradient1, AppPallete.gradient2],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return ShaderMask(
        shaderCallback: (bounds) => gradient.createShader(bounds),
        child: SvgPicture.asset(
          icon,
          width: size,
          height: size,
          color: Colors.white, // your original icon is white
        ),
      );
    } else {
      return SvgPicture.asset(
        icon,
        width: size,
        height: size,
        color: Colors.white, // unselected icon color
      );
    }
  }
}
