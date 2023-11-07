import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:sajda_shop/domain/user/user.dart';

part 'user_wrapper.freezed.dart';
part 'user_wrapper.g.dart';

@freezed
abstract class UserWrapper with _$UserWrapper {
  const factory UserWrapper({
    required int status,
    @JsonKey(name: "object")
    required User user,
  }) = _UserWrapper;

  factory UserWrapper.fromJson(Map<String, dynamic> json) =>
      _$UserWrapperFromJson(json);
}

