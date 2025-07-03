import 'package:elwekala/core/constants/app_strings.dart';
import 'package:elwekala/features/profile/widgets/profile_account_section.dart';
import 'package:elwekala/features/profile/widgets/profile_header.dart';
import 'package:elwekala/features/profile/widgets/profile_settings_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(left: 24.w),
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(AppStrings.generalSettings),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24.w),
            child: _ProfileScreenBody(),
          ),
        ),
      ),
    );
  }
}

class _ProfileScreenBody extends StatelessWidget {
  const _ProfileScreenBody();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Profile Header Section
        ProfileHeaderSection(),

        // Account Section
        ProfileAccountSection(),

        // Settings Section
        ProfileSettingsSection(),
      ],
    );
  }
}
