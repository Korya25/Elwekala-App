import 'package:elwekala/core/api/end_points.dart';
import 'package:elwekala/features/profile/domain/entities/profile_user_entity.dart';

class ProfileResponseModel {
  final String status;
  final String? message;
  final ProfileUserModel user;

  ProfileResponseModel({
    required this.status,
    required this.message,
    required this.user,
  });

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) {
    return ProfileResponseModel(
      status: json[ApiKeys.status],
      message: json[ApiKeys.message],
      user: ProfileUserModel.fromJson(json[ApiKeys.user]),
    );
  }
}

class ProfileUserModel extends ProfileUserEntity {
  const ProfileUserModel({
    required super.name,
    required super.email,
    required super.phone,
    required super.nationalId,
    required super.gender,
    required super.profileImage,
    required super.token,
  });

  factory ProfileUserModel.fromJson(Map<String, dynamic> json) {
    return ProfileUserModel(
      name: json[ApiKeys.name],
      email: json[ApiKeys.email],
      phone: json[ApiKeys.phone],
      nationalId: json[ApiKeys.nationalId],
      gender: json[ApiKeys.gender],
      profileImage: json[ApiKeys.profileImage],
      token: json[ApiKeys.token],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKeys.name: name,
      ApiKeys.email: email,
      ApiKeys.phone: phone,
      ApiKeys.nationalId: nationalId,
      ApiKeys.gender: gender,
      ApiKeys.profileImage: profileImage,
      ApiKeys.token: token,
    };
  }
}
