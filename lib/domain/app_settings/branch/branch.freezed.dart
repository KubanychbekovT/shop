// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreInfo _$StoreInfoFromJson(Map<String, dynamic> json) {
  return _StoreInfo.fromJson(json);
}

/// @nodoc
mixin _$StoreInfo {
  bool get active => throw _privateConstructorUsedError;
  String get start => throw _privateConstructorUsedError;
  String get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreInfoCopyWith<StoreInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreInfoCopyWith<$Res> {
  factory $StoreInfoCopyWith(StoreInfo value, $Res Function(StoreInfo) then) =
      _$StoreInfoCopyWithImpl<$Res, StoreInfo>;
  @useResult
  $Res call({bool active, String start, String end});
}

/// @nodoc
class _$StoreInfoCopyWithImpl<$Res, $Val extends StoreInfo>
    implements $StoreInfoCopyWith<$Res> {
  _$StoreInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreInfoImplCopyWith<$Res>
    implements $StoreInfoCopyWith<$Res> {
  factory _$$StoreInfoImplCopyWith(
          _$StoreInfoImpl value, $Res Function(_$StoreInfoImpl) then) =
      __$$StoreInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool active, String start, String end});
}

/// @nodoc
class __$$StoreInfoImplCopyWithImpl<$Res>
    extends _$StoreInfoCopyWithImpl<$Res, _$StoreInfoImpl>
    implements _$$StoreInfoImplCopyWith<$Res> {
  __$$StoreInfoImplCopyWithImpl(
      _$StoreInfoImpl _value, $Res Function(_$StoreInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$StoreInfoImpl(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreInfoImpl implements _StoreInfo {
  _$StoreInfoImpl(
      {required this.active, required this.start, required this.end});

  factory _$StoreInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreInfoImplFromJson(json);

  @override
  final bool active;
  @override
  final String start;
  @override
  final String end;

  @override
  String toString() {
    return 'StoreInfo(active: $active, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreInfoImpl &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, active, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreInfoImplCopyWith<_$StoreInfoImpl> get copyWith =>
      __$$StoreInfoImplCopyWithImpl<_$StoreInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreInfoImplToJson(
      this,
    );
  }
}

abstract class _StoreInfo implements StoreInfo {
  factory _StoreInfo(
      {required final bool active,
      required final String start,
      required final String end}) = _$StoreInfoImpl;

  factory _StoreInfo.fromJson(Map<String, dynamic> json) =
      _$StoreInfoImpl.fromJson;

  @override
  bool get active;
  @override
  String get start;
  @override
  String get end;
  @override
  @JsonKey(ignore: true)
  _$$StoreInfoImplCopyWith<_$StoreInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return _Branch.fromJson(json);
}

/// @nodoc
mixin _$Branch {
  StoreInfo get monday => throw _privateConstructorUsedError;
  StoreInfo get tuesday => throw _privateConstructorUsedError;
  StoreInfo get wednesday => throw _privateConstructorUsedError;
  StoreInfo get thursday => throw _privateConstructorUsedError;
  StoreInfo get friday => throw _privateConstructorUsedError;
  StoreInfo get saturday => throw _privateConstructorUsedError;
  StoreInfo get sunday => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchCopyWith<Branch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchCopyWith<$Res> {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) then) =
      _$BranchCopyWithImpl<$Res, Branch>;
  @useResult
  $Res call(
      {StoreInfo monday,
      StoreInfo tuesday,
      StoreInfo wednesday,
      StoreInfo thursday,
      StoreInfo friday,
      StoreInfo saturday,
      StoreInfo sunday,
      String address,
      String longitude,
      String latitude,
      String phone,
      @JsonKey(name: "_id") String id});

  $StoreInfoCopyWith<$Res> get monday;
  $StoreInfoCopyWith<$Res> get tuesday;
  $StoreInfoCopyWith<$Res> get wednesday;
  $StoreInfoCopyWith<$Res> get thursday;
  $StoreInfoCopyWith<$Res> get friday;
  $StoreInfoCopyWith<$Res> get saturday;
  $StoreInfoCopyWith<$Res> get sunday;
}

/// @nodoc
class _$BranchCopyWithImpl<$Res, $Val extends Branch>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monday = null,
    Object? tuesday = null,
    Object? wednesday = null,
    Object? thursday = null,
    Object? friday = null,
    Object? saturday = null,
    Object? sunday = null,
    Object? address = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? phone = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      monday: null == monday
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
      tuesday: null == tuesday
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
      wednesday: null == wednesday
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
      thursday: null == thursday
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
      friday: null == friday
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
      saturday: null == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
      sunday: null == sunday
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreInfoCopyWith<$Res> get monday {
    return $StoreInfoCopyWith<$Res>(_value.monday, (value) {
      return _then(_value.copyWith(monday: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreInfoCopyWith<$Res> get tuesday {
    return $StoreInfoCopyWith<$Res>(_value.tuesday, (value) {
      return _then(_value.copyWith(tuesday: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreInfoCopyWith<$Res> get wednesday {
    return $StoreInfoCopyWith<$Res>(_value.wednesday, (value) {
      return _then(_value.copyWith(wednesday: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreInfoCopyWith<$Res> get thursday {
    return $StoreInfoCopyWith<$Res>(_value.thursday, (value) {
      return _then(_value.copyWith(thursday: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreInfoCopyWith<$Res> get friday {
    return $StoreInfoCopyWith<$Res>(_value.friday, (value) {
      return _then(_value.copyWith(friday: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreInfoCopyWith<$Res> get saturday {
    return $StoreInfoCopyWith<$Res>(_value.saturday, (value) {
      return _then(_value.copyWith(saturday: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreInfoCopyWith<$Res> get sunday {
    return $StoreInfoCopyWith<$Res>(_value.sunday, (value) {
      return _then(_value.copyWith(sunday: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BranchImplCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$$BranchImplCopyWith(
          _$BranchImpl value, $Res Function(_$BranchImpl) then) =
      __$$BranchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StoreInfo monday,
      StoreInfo tuesday,
      StoreInfo wednesday,
      StoreInfo thursday,
      StoreInfo friday,
      StoreInfo saturday,
      StoreInfo sunday,
      String address,
      String longitude,
      String latitude,
      String phone,
      @JsonKey(name: "_id") String id});

  @override
  $StoreInfoCopyWith<$Res> get monday;
  @override
  $StoreInfoCopyWith<$Res> get tuesday;
  @override
  $StoreInfoCopyWith<$Res> get wednesday;
  @override
  $StoreInfoCopyWith<$Res> get thursday;
  @override
  $StoreInfoCopyWith<$Res> get friday;
  @override
  $StoreInfoCopyWith<$Res> get saturday;
  @override
  $StoreInfoCopyWith<$Res> get sunday;
}

/// @nodoc
class __$$BranchImplCopyWithImpl<$Res>
    extends _$BranchCopyWithImpl<$Res, _$BranchImpl>
    implements _$$BranchImplCopyWith<$Res> {
  __$$BranchImplCopyWithImpl(
      _$BranchImpl _value, $Res Function(_$BranchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monday = null,
    Object? tuesday = null,
    Object? wednesday = null,
    Object? thursday = null,
    Object? friday = null,
    Object? saturday = null,
    Object? sunday = null,
    Object? address = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? phone = null,
    Object? id = null,
  }) {
    return _then(_$BranchImpl(
      monday: null == monday
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
      tuesday: null == tuesday
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
      wednesday: null == wednesday
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
      thursday: null == thursday
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
      friday: null == friday
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
      saturday: null == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
      sunday: null == sunday
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as StoreInfo,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchImpl implements _Branch {
  _$BranchImpl(
      {required this.monday,
      required this.tuesday,
      required this.wednesday,
      required this.thursday,
      required this.friday,
      required this.saturday,
      required this.sunday,
      required this.address,
      required this.longitude,
      required this.latitude,
      required this.phone,
      @JsonKey(name: "_id") required this.id});

  factory _$BranchImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchImplFromJson(json);

  @override
  final StoreInfo monday;
  @override
  final StoreInfo tuesday;
  @override
  final StoreInfo wednesday;
  @override
  final StoreInfo thursday;
  @override
  final StoreInfo friday;
  @override
  final StoreInfo saturday;
  @override
  final StoreInfo sunday;
  @override
  final String address;
  @override
  final String longitude;
  @override
  final String latitude;
  @override
  final String phone;
  @override
  @JsonKey(name: "_id")
  final String id;

  @override
  String toString() {
    return 'Branch(monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday, saturday: $saturday, sunday: $sunday, address: $address, longitude: $longitude, latitude: $latitude, phone: $phone, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchImpl &&
            (identical(other.monday, monday) || other.monday == monday) &&
            (identical(other.tuesday, tuesday) || other.tuesday == tuesday) &&
            (identical(other.wednesday, wednesday) ||
                other.wednesday == wednesday) &&
            (identical(other.thursday, thursday) ||
                other.thursday == thursday) &&
            (identical(other.friday, friday) || other.friday == friday) &&
            (identical(other.saturday, saturday) ||
                other.saturday == saturday) &&
            (identical(other.sunday, sunday) || other.sunday == sunday) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      monday,
      tuesday,
      wednesday,
      thursday,
      friday,
      saturday,
      sunday,
      address,
      longitude,
      latitude,
      phone,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      __$$BranchImplCopyWithImpl<_$BranchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchImplToJson(
      this,
    );
  }
}

abstract class _Branch implements Branch {
  factory _Branch(
      {required final StoreInfo monday,
      required final StoreInfo tuesday,
      required final StoreInfo wednesday,
      required final StoreInfo thursday,
      required final StoreInfo friday,
      required final StoreInfo saturday,
      required final StoreInfo sunday,
      required final String address,
      required final String longitude,
      required final String latitude,
      required final String phone,
      @JsonKey(name: "_id") required final String id}) = _$BranchImpl;

  factory _Branch.fromJson(Map<String, dynamic> json) = _$BranchImpl.fromJson;

  @override
  StoreInfo get monday;
  @override
  StoreInfo get tuesday;
  @override
  StoreInfo get wednesday;
  @override
  StoreInfo get thursday;
  @override
  StoreInfo get friday;
  @override
  StoreInfo get saturday;
  @override
  StoreInfo get sunday;
  @override
  String get address;
  @override
  String get longitude;
  @override
  String get latitude;
  @override
  String get phone;
  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
