import 'package:ai_video_genarator/core/constant/app_icons.dart';
import 'package:ai_video_genarator/core/theme/app_pallete.dart';
import 'package:ai_video_genarator/core/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppPallete.blackGradient4,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Align(
              alignment: AlignmentGeometry.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.menu),
              ),
            ),
            SizedBox(height: context.spacing32),
            ListTile(
              leading: SvgPicture.asset(AppIcons.person),
              title: const Text('Profile'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              leading: SvgPicture.asset(AppIcons.subscription),
              title: const Text('Subscription'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: SvgPicture.asset(AppIcons.privacyPolicy),
              title: const Text('Privacy policy'),
              onTap: () {
                //Handle item 3 tap
              },
            ),
          ],
        ),
      ),
    );
  }
}
