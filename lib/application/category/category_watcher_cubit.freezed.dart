// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categoryList)
        loadCategoriesSuccess,
    required TResult Function() loadCategoriesFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categoryList)? loadCategoriesSuccess,
    TResult? Function()? loadCategoriesFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categoryList)? loadCategoriesSuccess,
    TResult Function()? loadCategoriesFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadCategoriesSuccess value)
        loadCategoriesSuccess,
    required TResult Function(_LoadCategoriesFail value) loadCategoriesFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadCategoriesSuccess value)? loadCategoriesSuccess,
    TResult? Function(_LoadCategoriesFail value)? loadCategoriesFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadCategoriesSuccess value)? loadCategoriesSuccess,
    TResult Function(_LoadCategoriesFail value)? loadCategoriesFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWatcherStateCopyWith<$Res> {
  factory $CategoryWatcherStateCopyWith(CategoryWatcherState value,
          $Res Function(CategoryWatcherState) then) =
      _$CategoryWatcherStateCopyWithImpl<$Res, CategoryWatcherState>;
}

/// @nodoc
class _$CategoryWatcherStateCopyWithImpl<$Res,
        $Val extends CategoryWatcherState>
    implements $CategoryWatcherStateCopyWith<$Res> {
  _$CategoryWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$CategoryWatcherStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CategoryWatcherState.initial()';
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
    required TResult Function(List<Category> categoryList)
        loadCategoriesSuccess,
    required TResult Function() loadCategoriesFail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categoryList)? loadCategoriesSuccess,
    TResult? Function()? loadCategoriesFail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categoryList)? loadCategoriesSuccess,
    TResult Function()? loadCategoriesFail,
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
    required TResult Function(_LoadCategoriesSuccess value)
        loadCategoriesSuccess,
    required TResult Function(_LoadCategoriesFail value) loadCategoriesFail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadCategoriesSuccess value)? loadCategoriesSuccess,
    TResult? Function(_LoadCategoriesFail value)? loadCategoriesFail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadCategoriesSuccess value)? loadCategoriesSuccess,
    TResult Function(_LoadCategoriesFail value)? loadCategoriesFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoryWatcherState {
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
    extends _$CategoryWatcherStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'CategoryWatcherState.loading()';
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
    required TResult Function(List<Category> categoryList)
        loadCategoriesSuccess,
    required TResult Function() loadCategoriesFail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categoryList)? loadCategoriesSuccess,
    TResult? Function()? loadCategoriesFail,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categoryList)? loadCategoriesSuccess,
    TResult Function()? loadCategoriesFail,
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
    required TResult Function(_LoadCategoriesSuccess value)
        loadCategoriesSuccess,
    required TResult Function(_LoadCategoriesFail value) loadCategoriesFail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadCategoriesSuccess value)? loadCategoriesSuccess,
    TResult? Function(_LoadCategoriesFail value)? loadCategoriesFail,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadCategoriesSuccess value)? loadCategoriesSuccess,
    TResult Function(_LoadCategoriesFail value)? loadCategoriesFail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CategoryWatcherState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadCategoriesSuccessImplCopyWith<$Res> {
  factory _$$LoadCategoriesSuccessImplCopyWith(
          _$LoadCategoriesSuccessImpl value,
          $Res Function(_$LoadCategoriesSuccessImpl) then) =
      __$$LoadCategoriesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Category> categoryList});
}

/// @nodoc
class __$$LoadCategoriesSuccessImplCopyWithImpl<$Res>
    extends _$CategoryWatcherStateCopyWithImpl<$Res,
        _$LoadCategoriesSuccessImpl>
    implements _$$LoadCategoriesSuccessImplCopyWith<$Res> {
  __$$LoadCategoriesSuccessImplCopyWithImpl(_$LoadCategoriesSuccessImpl _value,
      $Res Function(_$LoadCategoriesSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
  }) {
    return _then(_$LoadCategoriesSuccessImpl(
      null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$LoadCategoriesSuccessImpl implements _LoadCategoriesSuccess {
  const _$LoadCategoriesSuccessImpl(final List<Category> categoryList)
      : _categoryList = categoryList;

  final List<Category> _categoryList;
  @override
  List<Category> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  String toString() {
    return 'CategoryWatcherState.loadCategoriesSuccess(categoryList: $categoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCategoriesSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCategoriesSuccessImplCopyWith<_$LoadCategoriesSuccessImpl>
      get copyWith => __$$LoadCategoriesSuccessImplCopyWithImpl<
          _$LoadCategoriesSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categoryList)
        loadCategoriesSuccess,
    required TResult Function() loadCategoriesFail,
  }) {
    return loadCategoriesSuccess(categoryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categoryList)? loadCategoriesSuccess,
    TResult? Function()? loadCategoriesFail,
  }) {
    return loadCategoriesSuccess?.call(categoryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categoryList)? loadCategoriesSuccess,
    TResult Function()? loadCategoriesFail,
    required TResult orElse(),
  }) {
    if (loadCategoriesSuccess != null) {
      return loadCategoriesSuccess(categoryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadCategoriesSuccess value)
        loadCategoriesSuccess,
    required TResult Function(_LoadCategoriesFail value) loadCategoriesFail,
  }) {
    return loadCategoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadCategoriesSuccess value)? loadCategoriesSuccess,
    TResult? Function(_LoadCategoriesFail value)? loadCategoriesFail,
  }) {
    return loadCategoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadCategoriesSuccess value)? loadCategoriesSuccess,
    TResult Function(_LoadCategoriesFail value)? loadCategoriesFail,
    required TResult orElse(),
  }) {
    if (loadCategoriesSuccess != null) {
      return loadCategoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadCategoriesSuccess implements CategoryWatcherState {
  const factory _LoadCategoriesSuccess(final List<Category> categoryList) =
      _$LoadCategoriesSuccessImpl;

  List<Category> get categoryList;
  @JsonKey(ignore: true)
  _$$LoadCategoriesSuccessImplCopyWith<_$LoadCategoriesSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCategoriesFailImplCopyWith<$Res> {
  factory _$$LoadCategoriesFailImplCopyWith(_$LoadCategoriesFailImpl value,
          $Res Function(_$LoadCategoriesFailImpl) then) =
      __$$LoadCategoriesFailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCategoriesFailImplCopyWithImpl<$Res>
    extends _$CategoryWatcherStateCopyWithImpl<$Res, _$LoadCategoriesFailImpl>
    implements _$$LoadCategoriesFailImplCopyWith<$Res> {
  __$$LoadCategoriesFailImplCopyWithImpl(_$LoadCategoriesFailImpl _value,
      $Res Function(_$LoadCategoriesFailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCategoriesFailImpl implements _LoadCategoriesFail {
  const _$LoadCategoriesFailImpl();

  @override
  String toString() {
    return 'CategoryWatcherState.loadCategoriesFail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCategoriesFailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categoryList)
        loadCategoriesSuccess,
    required TResult Function() loadCategoriesFail,
  }) {
    return loadCategoriesFail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categoryList)? loadCategoriesSuccess,
    TResult? Function()? loadCategoriesFail,
  }) {
    return loadCategoriesFail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categoryList)? loadCategoriesSuccess,
    TResult Function()? loadCategoriesFail,
    required TResult orElse(),
  }) {
    if (loadCategoriesFail != null) {
      return loadCategoriesFail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadCategoriesSuccess value)
        loadCategoriesSuccess,
    required TResult Function(_LoadCategoriesFail value) loadCategoriesFail,
  }) {
    return loadCategoriesFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadCategoriesSuccess value)? loadCategoriesSuccess,
    TResult? Function(_LoadCategoriesFail value)? loadCategoriesFail,
  }) {
    return loadCategoriesFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadCategoriesSuccess value)? loadCategoriesSuccess,
    TResult Function(_LoadCategoriesFail value)? loadCategoriesFail,
    required TResult orElse(),
  }) {
    if (loadCategoriesFail != null) {
      return loadCategoriesFail(this);
    }
    return orElse();
  }
}

abstract class _LoadCategoriesFail implements CategoryWatcherState {
  const factory _LoadCategoriesFail() = _$LoadCategoriesFailImpl;
}
