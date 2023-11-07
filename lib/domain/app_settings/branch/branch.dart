import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'branch.freezed.dart';
part 'branch.g.dart';

@freezed
class StoreInfo with _$StoreInfo {
  factory StoreInfo({
    required bool active,
    required String start,
    required String end,
  }) = _StoreInfo;

  factory StoreInfo.fromJson(Map<String, dynamic> json) =>
      _$StoreInfoFromJson(json);
}

@freezed
class Branch with _$Branch {
  factory Branch({
    required StoreInfo monday,
    required StoreInfo tuesday,
    required StoreInfo wednesday,
    required StoreInfo thursday,
    required StoreInfo friday,
    required StoreInfo saturday,
    required StoreInfo sunday,
    required String address,
    required String longitude,
    required String latitude,
    required String phone,
    @JsonKey(name: "_id")
    required String id,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}
