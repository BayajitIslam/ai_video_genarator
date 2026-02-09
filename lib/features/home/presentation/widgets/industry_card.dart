import 'package:ai_video_genarator/core/theme/app_pallete.dart';
import 'package:ai_video_genarator/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class IndustryCard extends StatelessWidget {
  final String name;
  final String bgImage;
  const IndustryCard({super.key, required this.name, required this.bgImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(bgImage), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
        border: BoxBorder.all(width: 0.5, color: AppPallete.greyColor),
      ),
      margin: EdgeInsets.only(top: context.spacing16),
      padding: EdgeInsets.symmetric(
        horizontal: context.spacing8,
        vertical: context.spacing4,
      ),
      child: Align(
        alignment: AlignmentGeometry.topRight,
        child: Text(
          name,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppPallete.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
