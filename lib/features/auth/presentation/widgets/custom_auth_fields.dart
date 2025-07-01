import 'package:elwekala/core/constants/app_colors.dart';
import 'package:elwekala/core/constants/app_strings.dart';
import 'package:elwekala/core/utils/validators.dart';
import 'package:elwekala/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController controller;

  const PasswordField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: AppStrings.password,
      hintText: AppStrings.passwordFieldHint,
      controller: controller,
      validator: Validators.validatePassword,
      obscureText: true,
      prefixIcon: Icon(Icons.lock_outline, color: AppColors.iconColor),
    );
  }
}
class EmailField extends StatelessWidget {
  final TextEditingController controller;

  const EmailField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: AppStrings.email,
      hintText: AppStrings.emailFieldHint,
      controller: controller,
      validator: Validators.validateEmail,
      keyboardType: TextInputType.emailAddress,
      prefixIcon: Icon(Icons.email_outlined, color: AppColors.iconColor),
    );
  }
}
