import 'package:ai_video_genarator/core/theme/app_pallete.dart';
import 'package:ai_video_genarator/core/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthSocialButton extends StatelessWidget {
  final String iconPath;
  const AuthSocialButton({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: context.widthPercentage(44),
      decoration: BoxDecoration(
        color: AppPallete.white10Color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(child: SvgPicture.asset(iconPath)),
    );
  }
}
