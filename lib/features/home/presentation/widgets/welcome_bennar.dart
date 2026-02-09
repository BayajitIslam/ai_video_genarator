import 'package:ai_video_genarator/core/constant/app_images.dart';
import 'package:ai_video_genarator/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class WelcomeBennar extends StatelessWidget {
  const WelcomeBennar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.wellcomeBg),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          //Text
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Gradient Text
              ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [AppPallete.gradient1, AppPallete.gradient2],
                ).createShader(bounds),
                child: Text(
                  "Welcome! Start creating",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),

              Text(
                "AI-generated marketing videos\nwith your custom avatars.",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppPallete.whiteColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          //image
          Expanded(
            child: Image.asset(AppImages.wellcomePerson, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
