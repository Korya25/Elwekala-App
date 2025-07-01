import 'package:elwekala/core/constants/app_colors.dart';
import 'package:elwekala/core/constants/app_routes.dart';
import 'package:elwekala/core/constants/app_strings.dart';
import 'package:elwekala/features/auth/presentation/widgets/edit_profile_dialog.dart';
import 'package:elwekala/features/auth/presentation/widgets/profile_header.dart';
import 'package:elwekala/features/auth/presentation/widgets/profile_menu_item.dart';
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
          onPressed: () {
            context.go(AppRoutes.login);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(AppStrings.generalSettings),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              Text(
                AppStrings.profile,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.secondaryTextColor,
                ),
              ),
              SizedBox(height: 16.h),
              ProfileHeader(
                onEditPressed: () {
                  _showEditProfileDialog(context);
                },
              ),
              SizedBox(height: 32.h),

              // Account Section
              Text(
                AppStrings.account,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.secondaryTextColor,
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.surfaceColor,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(13),
                      blurRadius: 10,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ProfileMenuItem(
                      icon: Icons.phone_outlined,
                      title: AppStrings.phoneNumber,
                      onTap: () {},
                    ),
                    Divider(height: 1, color: AppColors.borderColor),
                    ProfileMenuItem(
                      icon: Icons.security_outlined,
                      title: AppStrings.twoStepVerification,
                      onTap: () {},
                    ),
                    Divider(height: 1, color: AppColors.borderColor),
                    ProfileMenuItem(
                      icon: Icons.lock_outline,
                      title: AppStrings.passcode,
                      onTap: () {},
                    ),
                    Divider(height: 1, color: AppColors.borderColor),
                    ProfileMenuItem(
                      icon: Icons.email_outlined,
                      title: AppStrings.emailAddress,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),

              // Settings Section
              Text(
                AppStrings.settings,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.secondaryTextColor,
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.surfaceColor,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(13),
                      blurRadius: 10,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ProfileMenuItem(
                      icon: Icons.privacy_tip_outlined,
                      title: AppStrings.privacy,
                      onTap: () {},
                    ),
                    Divider(height: 1, color: AppColors.borderColor),
                    ProfileMenuItem(
                      icon: Icons.favorite_outline,
                      title: AppStrings.matching,
                      onTap: () {},
                    ),
                    Divider(height: 1, color: AppColors.borderColor),
                    ProfileMenuItem(
                      icon: Icons.logout,
                      title: AppStrings.logOut,
                      titleColor: AppColors.errorColor,
                      onTap: () {
                        _showLogoutDialog(context);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),

              // Footer
              Center(
                child: Text(
                  'Copyright 2025',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.secondaryTextColor,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  void _showEditProfileDialog(BuildContext context) {
    showDialog(context: context, builder: (context) => EditProfileDialog());
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Logout'),
        content: Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.go(AppRoutes.login);
            },
            child: Text(
              'Logout',
              style: TextStyle(color: AppColors.errorColor),
            ),
          ),
        ],
      ),
    );
  }
}
