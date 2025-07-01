import 'package:elwekala/core/constants/app_colors.dart';
import 'package:elwekala/core/constants/app_strings.dart';
import 'package:elwekala/core/utils/validators.dart';
import 'package:elwekala/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

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

class ConfirmPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final TextEditingController passwordController;

  const ConfirmPasswordField({
    super.key,
    required this.controller,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: AppStrings.confirmPassword,
      hintText: AppStrings.confirmPasswordFieldHint,
      controller: controller,
      validator: (value) =>
          Validators.validateConfirmPassword(value, passwordController.text),
      obscureText: true,
      prefixIcon: Icon(Icons.lock_outline, color: AppColors.iconColor),
    );
  }
}

class NameField extends StatelessWidget {
  final TextEditingController controller;

  const NameField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: AppStrings.name,
      hintText: AppStrings.nameFieldHint,
      controller: controller,
      validator: Validators.validateRequired,
      prefixIcon: Icon(Icons.person_outline, color: AppColors.iconColor),
    );
  }
}

class PhoneField extends StatelessWidget {
  final TextEditingController controller;

  const PhoneField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: AppStrings.phone,
      hintText: AppStrings.phoneFieldHint,
      controller: controller,
      validator: Validators.validatePhone,
      keyboardType: TextInputType.phone,
      prefixIcon: Icon(Icons.phone_outlined, color: AppColors.iconColor),
    );
  }
}

class NationalIdField extends StatelessWidget {
  final TextEditingController controller;

  const NationalIdField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: AppStrings.nationalId,
      hintText: AppStrings.nationalIdFieldHint,
      controller: controller,
      validator: Validators.validateNationalId,
      keyboardType: TextInputType.number,
      prefixIcon: Icon(Icons.badge_outlined, color: AppColors.iconColor),
    );
  }
}
