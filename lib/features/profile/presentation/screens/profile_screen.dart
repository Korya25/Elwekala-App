import 'package:elwekala/core/constants/app_strings.dart';
import 'package:elwekala/features/profile/domain/entities/profile_user_entity.dart';
import 'package:elwekala/features/profile/presentation/widgets/profile_account_section.dart';
import 'package:elwekala/features/profile/presentation/widgets/profile_header.dart';
import 'package:elwekala/features/profile/presentation/widgets/profile_settings_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elwekala/features/profile/presentation/controller/profile_cubit.dart';
import 'package:elwekala/features/profile/presentation/controller/profile_state.dart';
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
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(AppStrings.generalSettings),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              if (state is ProfileGetLoadinglState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is ProfileGetSucessState) {
                return _ProfileScreenBody(user: state.profileUserEntity);
              } else if (state is ProfileGetErrorState) {
                return Center(child: Text("Error: ${state.error}"));
              } else {
                return const SizedBox(child: Center(child: Text('data')));
              }
            },
          ),
        ),
      ),
    );
  }
}

class _ProfileScreenBody extends StatelessWidget {
  final ProfileUserEntity user;

  const _ProfileScreenBody({required this.user});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileHeaderSection(user: user),
          const ProfileAccountSection(),
          const ProfileSettingsSection(),
        ],
      ),
    );
  }
}
