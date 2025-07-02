import 'package:elwekala/core/api/end_points.dart';
import 'package:elwekala/features/auth/domain/entities/user_entity.dart';

class RegisterModel {
  final String status;
  final String message;
  final RegisterUserModel user;

  RegisterModel({
    required this.status,
    required this.message,
    required this.user,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      status: json[ApiKeys.status],
      message: json[ApiKeys.message],
      user: RegisterUserModel.fromJson(json[ApiKeys.user]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKeys.status: status,
      ApiKeys.message: message,
      ApiKeys.user: user.toJson(),
    };
  }
}

class RegisterUserModel extends UserEntity{
 
  RegisterUserModel({
    required super.name,
    required super.email,
    required super.phone,
    required super.nationalId,
    required super.gender,
    required super.profileImage,
    required super.token,
  });

  factory RegisterUserModel.fromJson(Map<String, dynamic> json) {
    return RegisterUserModel(
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
