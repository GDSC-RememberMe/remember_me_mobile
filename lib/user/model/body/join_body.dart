import 'package:json_annotation/json_annotation.dart';
import 'package:remember_me_mobile/user/model/user_model.dart';

part "join_body.g.dart";

@JsonSerializable()
class JoinBody {
  final String username;
  final String password;
  final String phone;
  final String nickname;
  final UserRole role;
  final DateTime birth;

  JoinBody({
    required this.username,
    required this.password,
    required this.phone,
    required this.nickname,
    required this.role,
    required this.birth,
  });

  factory JoinBody.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$JoinBodyFromJson(json);

  Map<String, dynamic> toJson() => _$JoinBodyToJson(this);
}
