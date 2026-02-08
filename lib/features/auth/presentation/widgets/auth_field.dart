import 'package:ai_video_genarator/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthField extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool isPassword;
  final bool isObscure;
  final IconData prefixIcon;
  const AuthField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
    required this.prefixIcon,
    this.isObscure = true,
  });

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  late bool isObscure;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.inner,
            color: AppPallete.blackGradient2,
            blurRadius: 24,
            spreadRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(24),
      ),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: Icon(widget.prefixIcon, size: 20),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: isObscure
                      ? Icon(Icons.visibility, size: 20)
                      : Icon(Icons.visibility_off, size: 20),
                )
              : null,
        ),
        obscureText: isObscure,
      ),
    );
  }
}
