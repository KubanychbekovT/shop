// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreInfoImpl _$$StoreInfoImplFromJson(Map<String, dynamic> json) =>
    _$StoreInfoImpl(
      active: json['active'] as bool,
      start: json['start'] as String,
      end: json['end'] as String,
    );

Map<String, dynamic> _$$StoreInfoImplToJson(_$StoreInfoImpl instance) =>
    <String, dynamic>{
      'active': instance.active,
      'start': instance.start,
      'end': instance.end,
    };

_$BranchImpl _$$BranchImplFromJson(Map<String, dynamic> json) => _$BranchImpl(
      monday: StoreInfo.fromJson(json['monday'] as Map<String, dynamic>),
      tuesday: StoreInfo.fromJson(json['tuesday'] as Map<String, dynamic>),
      wednesday: StoreInfo.fromJson(json['wednesday'] as Map<String, dynamic>),
      thursday: StoreInfo.fromJson(json['thursday'] as Map<String, dynamic>),
      friday: StoreInfo.fromJson(json['friday'] as Map<String, dynamic>),
      saturday: StoreInfo.fromJson(json['saturday'] as Map<String, dynamic>),
      sunday: StoreInfo.fromJson(json['sunday'] as Map<String, dynamic>),
      address: json['address'] as String,
      longitude: json['longitude'] as String,
      latitude: json['latitude'] as String,
      phone: json['phone'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$BranchImplToJson(_$BranchImpl instance) =>
    <String, dynamic>{
      'monday': instance.monday,
      'tuesday': instance.tuesday,
      'wednesday': instance.wednesday,
      'thursday': instance.thursday,
      'friday': instance.friday,
      'saturday': instance.saturday,
      'sunday': instance.sunday,
      'address': instance.address,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'phone': instance.phone,
      '_id': instance.id,
    };
