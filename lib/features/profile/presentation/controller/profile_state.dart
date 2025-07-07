import 'package:elwekala/features/profile/domain/entities/profile_user_entity.dart';
import 'package:elwekala/features/profile/domain/entities/update_profile_data.dart';

abstract class ProfileState {}

class ProfileIntialState extends ProfileState {}

class ProfileGetLoadinglState extends ProfileState {}

class ProfileGetSucessState extends ProfileState {
  final ProfileUserEntity profileUserEntity;

  ProfileGetSucessState(this.profileUserEntity);
}

class ProfileGetErrorState extends ProfileState {
  final String error;

  ProfileGetErrorState(this.error);
}
class ProfileUpdateSuccessState extends ProfileState {
  final UpdateProfileDataEntity updatedUser;

  ProfileUpdateSuccessState(this.updatedUser);
}
class ProfileUpdateLoadingState extends ProfileState {}

class ProfileUpdateErrorState extends ProfileState {
  final String error;

  ProfileUpdateErrorState(this.error);
}
