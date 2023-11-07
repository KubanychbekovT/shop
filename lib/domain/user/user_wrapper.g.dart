// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserWrapperImpl _$$UserWrapperImplFromJson(Map<String, dynamic> json) =>
    _$UserWrapperImpl(
      status: json['status'] as int,
      user: User.fromJson(json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserWrapperImplToJson(_$UserWrapperImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'object': instance.user,
    };
