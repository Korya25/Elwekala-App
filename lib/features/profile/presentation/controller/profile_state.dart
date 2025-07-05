import 'package:elwekala/features/profile/domain/entities/profile_user_entity.dart';

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
