import 'package:elwekala/core/constants/app_colors.dart';
import 'package:elwekala/core/constants/app_strings.dart';
import 'package:elwekala/features/profile/widgets/profile_title_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeaderSection extends StatelessWidget {
  final VoidCallback? onEditPressed;

  const ProfileHeaderSection({super.key, this.onEditPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileTitleSection(title: AppStrings.profile),

        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.all(20.w),
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
          child: Row(
            children: [
              // Profile Image
              Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.borderColor, width: 2),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.r),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzr9uph9Hige96UHRV93yDK8rSFMRXwvy96Q&s',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: AppColors.secondaryColor,
                        child: Icon(
                          Icons.person,
                          size: 30.sp,
                          color: AppColors.iconColor,
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(width: 16.w),

              // Profile Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Yassmine D. gold',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'Dream big, hustle harder.',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                  ],
                ),
              ),

              // QR Code
              IconButton(
                onPressed: onEditPressed,
                icon: Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    Icons.qr_code,
                    size: 20.sp,
                    color: AppColors.primaryTextColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
