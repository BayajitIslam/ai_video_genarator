import 'package:ai_video_genarator/core/common/bg_gradient.dart';
import 'package:ai_video_genarator/core/common/black_button.dart';
import 'package:ai_video_genarator/core/constant/app_images.dart';
import 'package:ai_video_genarator/core/theme/app_pallete.dart';
import 'package:ai_video_genarator/core/utils/screen_size.dart';
import 'package:ai_video_genarator/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  //route
  static MaterialPageRoute<dynamic> route({required String email, required String otp}) =>
      MaterialPageRoute(builder: (context) => ResetPasswordPage(email: email, otp: otp));

  //
  final String email;
  final String otp;

  ResetPasswordPage({super.key, required this.email, required this.otp});

  //Controller
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
                  //Reset Password Text
                  Align(
                    alignment: AlignmentGeometry.centerLeft,
                    child: Text(
                      'Reset Your Password',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppPallete.whiteColor,
                      ),
                    ),
                  ),

                  //Email TextField
                  SizedBox(height: context.spacing32),
                  AuthField(
                    controller: newPasswordController,
                    hintText: 'New Password',
                    isPassword: true,
                    prefixIcon: Icons.lock,
                  ),
                  SizedBox(height: context.spacing16),
                  AuthField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    isPassword: true,
                    prefixIcon: Icons.lock,
                  ),

                  // Send Otp Button
                  Spacer(),
                  BlackButton(
                    text: "Confirm",
                    onTap: () {
                      //route to enter OTP page
                      // Navigator.push(
                      //   context,
                      //   EnterOtpPage.route(email: emailController.text),
                      // );
                    },
                  ),
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
