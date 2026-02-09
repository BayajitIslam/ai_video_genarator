import 'package:ai_video_genarator/core/common/bg_gradient.dart';
import 'package:ai_video_genarator/core/common/black_button.dart';
import 'package:ai_video_genarator/core/constant/app_icons.dart';
import 'package:ai_video_genarator/core/constant/app_images.dart';
import 'package:ai_video_genarator/core/theme/app_pallete.dart';
import 'package:ai_video_genarator/core/utils/screen_size.dart';
import 'package:ai_video_genarator/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:ai_video_genarator/features/auth/presentation/pages/sign_up_page.dart';
import 'package:ai_video_genarator/features/auth/presentation/widgets/auth_field.dart';
import 'package:ai_video_genarator/features/auth/presentation/widgets/auth_social_button.dart';
import 'package:ai_video_genarator/features/home/presentation/pages/home_main_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  //route
  static MaterialPageRoute<dynamic> route() =>
      MaterialPageRoute(builder: (context) => SignInPage());

  SignInPage({super.key});

  //Controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                  //Sign In Text
                  Align(
                    alignment: AlignmentGeometry.centerLeft,
                    child: Text(
                      'Sign In',
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
                    hintText: 'Email Address',
                    isPassword: false,
                    prefixIcon: Icons.email,
                  ),

                  //Password TextField
                  SizedBox(height: context.spacing16),
                  AuthField(
                    controller: passwordController,
                    hintText: 'Password',
                    isPassword: true,
                    isObscure: true,
                    prefixIcon: Icons.lock,
                  ),

                  //Forgot Password
                  SizedBox(height: context.spacing24),
                  GestureDetector(
                    onTap: () {
                      //route to forgot password
                      Navigator.push(context, ForgotPasswordPage.route());
                    },
                    child: Text(
                      'Forgot password?',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppPallete.greyColor,
                      ),
                    ),
                  ),

                  //Sign In Button
                  SizedBox(height: context.heightPercentage(20)),
                  BlackButton(
                    text: "Sign In ",
                    onTap: () {
                      Navigator.push(context, HomeMainPage.route());
                    },
                  ),

                  //----- or -----
                  SizedBox(height: context.spacing16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //line
                      Container(
                        height: 1,
                        width: context.widthPercentage(40),
                        color: AppPallete.whiteColor,
                      ),
                      //or
                      Text("or", style: Theme.of(context).textTheme.bodyMedium),
                      //line
                      Container(
                        height: 1,
                        width: context.widthPercentage(40),
                        color: AppPallete.whiteColor,
                      ),
                    ],
                  ),

                  //Social Login Button - Google & Apple
                  SizedBox(height: context.spacing24),
                  Row(
                    children: [
                      //google
                      AuthSocialButton(iconPath: AppIcons.google),
                      //apple
                      SizedBox(width: context.spacing16),
                      AuthSocialButton(iconPath: AppIcons.apple),
                    ],
                  ),

                  //Allready Have an account? Sign in
                  SizedBox(height: context.heightPercentage(4.0)),
                  GestureDetector(
                    onTap: () {
                      //sign up route
                      Navigator.push(context, SignUpPage.route());
                    },
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "Don’t have an account? ",
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: [
                          TextSpan(
                            text: "Sign Up",
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: AppPallete.whiteColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
