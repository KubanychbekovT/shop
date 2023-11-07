import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sajda_shop/domain/app_settings/app_mode/app_mode.dart';
import 'package:sajda_shop/domain/app_settings/branch/branch.dart';
import 'package:sajda_shop/domain/app_settings/delivery/delivery.dart';
import 'package:sajda_shop/domain/app_settings/discount/discount.dart';


part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

@freezed
class AppSettings with _$AppSettings {
  factory AppSettings({
    @JsonKey(name: "object")
    required AppMode appMode,
    required List<Discount> discounts,
    required List<Delivery> deliveries,
    required List<Branch> branches,
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}
