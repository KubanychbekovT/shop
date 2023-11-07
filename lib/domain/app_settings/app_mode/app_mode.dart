import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_mode.freezed.dart';
part 'app_mode.g.dart';

@freezed
class AppMode with _$AppMode {
  factory AppMode({
    String? email,
    String? currency,
    bool? chat,
    bool? delivery,
    String? deliveryDescription,
    bool? catalogMode,
    bool? foodMode,
    String? whatsapp,
    String? telegram,
    String? facebook,
    String? instagram,
    String? website,
    bool? catalogStatus
  }) = _AppMode;

  factory AppMode.fromJson(Map<String, dynamic> json) =>
      _$AppModeFromJson(json);
}

