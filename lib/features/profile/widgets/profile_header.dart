import 'package:elwekala/core/constants/app_colors.dart';
import 'package:elwekala/core/constants/app_strings.dart';
import 'package:elwekala/features/profile/widgets/circular_network_image.dart';
import 'package:elwekala/features/profile/widgets/edit_profile_dialog.dart';
import 'package:elwekala/features/profile/widgets/profile_title_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileHeaderSection extends StatelessWidget {
  const ProfileHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title
        ProfileTitleSection(title: AppStrings.profile),

        // card
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
              const CircularNetworkImage(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzr9uph9Hige96UHRV93yDK8rSFMRXwvy96Q&s',
                size: 50,
              ),

              SizedBox(width: 16.w),

              // Profile Info
              Expanded(
                child: _ProfileHeaderInfo(
                  name: 'Mahmoud Mohammed',
                  bio: 'FEEL THE PAIN',
                ),
              ),
              // Edit Icon
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => EditProfileDialog(),
                  );
                },
                icon: Icon(FontAwesomeIcons.penToSquare),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ProfileHeaderInfo extends StatelessWidget {
  const _ProfileHeaderInfo({required this.name, required this.bio});
  final String name;
  final String bio;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          maxLines: 1,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryTextColor,
          ),
        ),
        Text(
          bio,
          style: TextStyle(
            fontSize: 12.sp,
            color: AppColors.secondaryTextColor,
          ),
        ),
      ],
    );
  }
}
