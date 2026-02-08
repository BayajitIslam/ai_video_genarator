import 'package:ai_video_genarator/core/common/bg_gradient.dart';
import 'package:ai_video_genarator/core/common/black_button.dart';
import 'package:ai_video_genarator/core/constant/app_images.dart';
import 'package:ai_video_genarator/core/theme/app_pallete.dart';
import 'package:ai_video_genarator/core/utils/screen_size.dart';
import 'package:ai_video_genarator/features/auth/presentation/pages/enter_otp_page.dart';
import 'package:ai_video_genarator/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  //route
  static MaterialPageRoute<dynamic> route() =>
      MaterialPageRoute(builder: (context) => ForgotPasswordPage());

  ForgotPasswordPage({super.key});

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
                  //Forgot Password Text
                  Align(
                    alignment: AlignmentGeometry.centerLeft,
                    child: Text(
                      'Forgot Password ',
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
                    controller: emailController,
                    hintText: 'Email',
                    isPassword: false,
                    prefixIcon: Icons.email,
                  ),

                  // Send Otp Button
                  Spacer(),
                  BlackButton(
                    text: "Send Otp ",
                    onTap: () {
                      //route to enter OTP page
                      Navigator.push(
                        context,
                        EnterOtpPage.route(email: emailController.text),
                      );
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
