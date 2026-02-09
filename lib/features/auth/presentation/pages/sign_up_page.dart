import 'package:ai_video_genarator/core/common/bg_gradient.dart';
import 'package:ai_video_genarator/core/common/black_button.dart';
import 'package:ai_video_genarator/core/constant/app_icons.dart';
import 'package:ai_video_genarator/core/constant/app_images.dart';
import 'package:ai_video_genarator/core/theme/app_pallete.dart';
import 'package:ai_video_genarator/core/utils/screen_size.dart';
import 'package:ai_video_genarator/features/auth/presentation/pages/sign_In_page.dart';
import 'package:ai_video_genarator/features/auth/presentation/widgets/auth_field.dart';
import 'package:ai_video_genarator/features/auth/presentation/widgets/auth_social_button.dart';
import 'package:ai_video_genarator/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  //route
  static MaterialPageRoute<dynamic> route() =>
      MaterialPageRoute(builder: (context) => SignUpPage());

  SignUpPage({super.key});

  //Controller
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController retypePasswordController =
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
                  //Sign Up Text
                  Align(
                    alignment: AlignmentGeometry.centerLeft,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppPallete.whiteColor,
                      ),
                    ),
                  ),

                  //Username Textfield
                  SizedBox(height: context.spacing32),
                  AuthField(
                    controller: usernameController,
                    hintText: 'Username',
                    isPassword: false,
                    prefixIcon: Icons.person,
                  ),

                  //Email TextField
                  SizedBox(height: context.spacing16),
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

                  //Re type your password textfield
                  SizedBox(height: context.spacing16),
                  AuthField(
                    controller: retypePasswordController,
                    hintText: 'Re-type Password',
                    isPassword: true,
                    isObscure: true,
                    prefixIcon: Icons.lock,
                  ),

                  //Privacy Policy Message
                  SizedBox(height: context.heightPercentage(9.90)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.widthPercentage(10),
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text:
                            "By clicking the “sign up” button, you accept the terms of the ",
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          TextSpan(
                            text: "Privacy Policy.",
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: AppPallete.whiteColor),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Sign Up Button
                  SizedBox(height: context.spacing24),
                  BlackButton(
                    text: "Sign Up",
                    onTap: () {
                      //route to home page
                      Navigator.pushAndRemoveUntil(
                        context,
                        HomePage.route(),
                        (route) => false,
                      );
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
                      //route to signin page
                      Navigator.push(context, SignInPage.route());
                    },
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "Already have an account? ",
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: [
                          TextSpan(
                            text: "Sign In",
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
