import 'package:elwekala/core/constants/app_strings.dart';
import 'package:elwekala/features/profile/widgets/edit_profile_dialog.dart';
import 'package:elwekala/features/profile/widgets/profile_account_section.dart';
import 'package:elwekala/features/profile/widgets/profile_header.dart';
import 'package:elwekala/features/profile/widgets/profile_settings_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            //context.pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(AppStrings.generalSettings),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24.w),
            child: ProfileScreenBody(),
          ),
        ),
      ),
    );
  }
}

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Profile Header Section
        ProfileHeaderSection(
          onEditPressed: () {
            _showEditProfileDialog(context);
          },
        ),

        // Account Section
        ProfileAccountSection(),

        // Settings Section
        ProfileSettingsSection(),
      ],
    );
  }

  void _showEditProfileDialog(BuildContext context) {
    showDialog(context: context, builder: (context) => EditProfileDialog());
  }
}

