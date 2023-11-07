// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> newsList) loadNewsSuccess,
    required TResult Function() loadNewsFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> newsList)? loadNewsSuccess,
    TResult? Function()? loadNewsFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> newsList)? loadNewsSuccess,
    TResult Function()? loadNewsFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadNewsSuccess value) loadNewsSuccess,
    required TResult Function(_LoadNewsFail value) loadNewsFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadNewsSuccess value)? loadNewsSuccess,
    TResult? Function(_LoadNewsFail value)? loadNewsFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadNewsSuccess value)? loadNewsSuccess,
    TResult Function(_LoadNewsFail value)? loadNewsFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsWatcherStateCopyWith<$Res> {
  factory $NewsWatcherStateCopyWith(
          NewsWatcherState value, $Res Function(NewsWatcherState) then) =
      _$NewsWatcherStateCopyWithImpl<$Res, NewsWatcherState>;
}

/// @nodoc
class _$NewsWatcherStateCopyWithImpl<$Res, $Val extends NewsWatcherState>
    implements $NewsWatcherStateCopyWith<$Res> {
  _$NewsWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NewsWatcherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'NewsWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> newsList) loadNewsSuccess,
    required TResult Function() loadNewsFail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> newsList)? loadNewsSuccess,
    TResult? Function()? loadNewsFail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> newsList)? loadNewsSuccess,
    TResult Function()? loadNewsFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadNewsSuccess value) loadNewsSuccess,
    required TResult Function(_LoadNewsFail value) loadNewsFail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadNewsSuccess value)? loadNewsSuccess,
    TResult? Function(_LoadNewsFail value)? loadNewsFail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadNewsSuccess value)? loadNewsSuccess,
    TResult Function(_LoadNewsFail value)? loadNewsFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NewsWatcherState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$NewsWatcherStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'NewsWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> newsList) loadNewsSuccess,
    required TResult Function() loadNewsFail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> newsList)? loadNewsSuccess,
    TResult? Function()? loadNewsFail,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> newsList)? loadNewsSuccess,
    TResult Function()? loadNewsFail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadNewsSuccess value) loadNewsSuccess,
    required TResult Function(_LoadNewsFail value) loadNewsFail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadNewsSuccess value)? loadNewsSuccess,
    TResult? Function(_LoadNewsFail value)? loadNewsFail,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadNewsSuccess value)? loadNewsSuccess,
    TResult Function(_LoadNewsFail value)? loadNewsFail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NewsWatcherState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadNewsSuccessImplCopyWith<$Res> {
  factory _$$LoadNewsSuccessImplCopyWith(_$LoadNewsSuccessImpl value,
          $Res Function(_$LoadNewsSuccessImpl) then) =
      __$$LoadNewsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<News> newsList});
}

/// @nodoc
class __$$LoadNewsSuccessImplCopyWithImpl<$Res>
    extends _$NewsWatcherStateCopyWithImpl<$Res, _$LoadNewsSuccessImpl>
    implements _$$LoadNewsSuccessImplCopyWith<$Res> {
  __$$LoadNewsSuccessImplCopyWithImpl(
      _$LoadNewsSuccessImpl _value, $Res Function(_$LoadNewsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsList = null,
  }) {
    return _then(_$LoadNewsSuccessImpl(
      null == newsList
          ? _value._newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<News>,
    ));
  }
}

/// @nodoc

class _$LoadNewsSuccessImpl implements _LoadNewsSuccess {
  const _$LoadNewsSuccessImpl(final List<News> newsList) : _newsList = newsList;

  final List<News> _newsList;
  @override
  List<News> get newsList {
    if (_newsList is EqualUnmodifiableListView) return _newsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsList);
  }

  @override
  String toString() {
    return 'NewsWatcherState.loadNewsSuccess(newsList: $newsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadNewsSuccessImpl &&
            const DeepCollectionEquality().equals(other._newsList, _newsList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_newsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadNewsSuccessImplCopyWith<_$LoadNewsSuccessImpl> get copyWith =>
      __$$LoadNewsSuccessImplCopyWithImpl<_$LoadNewsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> newsList) loadNewsSuccess,
    required TResult Function() loadNewsFail,
  }) {
    return loadNewsSuccess(newsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> newsList)? loadNewsSuccess,
    TResult? Function()? loadNewsFail,
  }) {
    return loadNewsSuccess?.call(newsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> newsList)? loadNewsSuccess,
    TResult Function()? loadNewsFail,
    required TResult orElse(),
  }) {
    if (loadNewsSuccess != null) {
      return loadNewsSuccess(newsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadNewsSuccess value) loadNewsSuccess,
    required TResult Function(_LoadNewsFail value) loadNewsFail,
  }) {
    return loadNewsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadNewsSuccess value)? loadNewsSuccess,
    TResult? Function(_LoadNewsFail value)? loadNewsFail,
  }) {
    return loadNewsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadNewsSuccess value)? loadNewsSuccess,
    TResult Function(_LoadNewsFail value)? loadNewsFail,
    required TResult orElse(),
  }) {
    if (loadNewsSuccess != null) {
      return loadNewsSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadNewsSuccess implements NewsWatcherState {
  const factory _LoadNewsSuccess(final List<News> newsList) =
      _$LoadNewsSuccessImpl;

  List<News> get newsList;
  @JsonKey(ignore: true)
  _$$LoadNewsSuccessImplCopyWith<_$LoadNewsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadNewsFailImplCopyWith<$Res> {
  factory _$$LoadNewsFailImplCopyWith(
          _$LoadNewsFailImpl value, $Res Function(_$LoadNewsFailImpl) then) =
      __$$LoadNewsFailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadNewsFailImplCopyWithImpl<$Res>
    extends _$NewsWatcherStateCopyWithImpl<$Res, _$LoadNewsFailImpl>
    implements _$$LoadNewsFailImplCopyWith<$Res> {
  __$$LoadNewsFailImplCopyWithImpl(
      _$LoadNewsFailImpl _value, $Res Function(_$LoadNewsFailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadNewsFailImpl implements _LoadNewsFail {
  const _$LoadNewsFailImpl();

  @override
  String toString() {
    return 'NewsWatcherState.loadNewsFail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadNewsFailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> newsList) loadNewsSuccess,
    required TResult Function() loadNewsFail,
  }) {
    return loadNewsFail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> newsList)? loadNewsSuccess,
    TResult? Function()? loadNewsFail,
  }) {
    return loadNewsFail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> newsList)? loadNewsSuccess,
    TResult Function()? loadNewsFail,
    required TResult orElse(),
  }) {
    if (loadNewsFail != null) {
      return loadNewsFail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadNewsSuccess value) loadNewsSuccess,
    required TResult Function(_LoadNewsFail value) loadNewsFail,
  }) {
    return loadNewsFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadNewsSuccess value)? loadNewsSuccess,
    TResult? Function(_LoadNewsFail value)? loadNewsFail,
  }) {
    return loadNewsFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadNewsSuccess value)? loadNewsSuccess,
    TResult Function(_LoadNewsFail value)? loadNewsFail,
    required TResult orElse(),
  }) {
    if (loadNewsFail != null) {
      return loadNewsFail(this);
    }
    return orElse();
  }
}

abstract class _LoadNewsFail implements NewsWatcherState {
  const factory _LoadNewsFail() = _$LoadNewsFailImpl;
}
