import 'package:elwekala/core/api/end_points.dart';

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

class RegisterUserModel {
  final String name;
  final String email;
  final String phone;
  final String nationalId;
  final String gender;
  final String profileImage;
  final String token;

  RegisterUserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.nationalId,
    required this.gender,
    required this.profileImage,
    required this.token,
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
