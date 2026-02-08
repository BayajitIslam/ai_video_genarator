import 'package:ai_video_genarator/core/common/bg_gradient.dart';
import 'package:ai_video_genarator/core/common/black_button.dart';
import 'package:ai_video_genarator/core/constant/app_images.dart';
import 'package:ai_video_genarator/core/theme/app_pallete.dart';
import 'package:ai_video_genarator/core/utils/screen_size.dart';
import 'package:ai_video_genarator/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';

class EnterOtpPage extends StatelessWidget {
  //route
  static MaterialPageRoute<dynamic> route({required String email}) =>
      MaterialPageRoute(builder: (context) => EnterOtpPage(email: email));

  //field
  final String email;

  EnterOtpPage({super.key, required this.email});

  //Controller
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      //Logo Here
      appBar: AppBar(
        title: SizedBox(
          height: 128,
          width: 128,
          child: Image.asset(AppImages.logo),
        ),
      ),
      body: BgGradient(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(context.spacing16),
            child: SafeArea(
              child: Column(
                children: [
                  //Enter OTP Text
                  Align(
                    alignment: AlignmentGeometry.centerLeft,
                    child: Text(
                      'Enter OTP',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppPallete.whiteColor,
                      ),
                    ),
                  ),

                  //OTP TextField
                  SizedBox(height: context.spacing32),
                  AuthField(
                    controller: emailController,
                    hintText: 'Enter 6 digit OTP',
                    isPassword: false,
                    prefixIcon: Icons.numbers,
                  ),

                  //resend top
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.widthPercentage(10),
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text:
                            "We sent a verification code to your email. Please check. If not, resend in ",
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          TextSpan(
                            text: "0:22 ",
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: AppPallete.whiteColor),
                          ),
                          TextSpan(
                            text: "minutes. ",
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: AppPallete.greyColor),
                          ),
                          TextSpan(
                            text: "Resend ",
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: AppPallete.whiteColor),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Submit Button
                  SizedBox(height: context.spacing16),
                  BlackButton(text: "Submit ", onTap: () {}),
                  SizedBox(height: context.heightPercentage(5)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
