
import 'package:elwekala/core/constants/app_colors.dart';
import 'package:elwekala/core/constants/app_routes.dart';
import 'package:elwekala/core/constants/app_strings.dart';
import 'package:elwekala/features/profile/widgets/profile_menu_item.dart';
import 'package:elwekala/features/profile/widgets/profile_title_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileSettingsSection extends StatelessWidget {
  const ProfileSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileTitleSection(title: AppStrings.settings),

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
      ],
    );
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
