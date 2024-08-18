import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in.freezed.dart';
part 'sign_in.g.dart';

@freezed
class SignInData with _$SignInData {
  factory SignInData({
    @JsonKey(name: 'login_id') String? username,
    @JsonKey(name: 'password') String? password,
  }) = _SignInData;

  factory SignInData.fromJson(Map<String, dynamic> json) =>
      _$SignInDataFromJson(json);
}
