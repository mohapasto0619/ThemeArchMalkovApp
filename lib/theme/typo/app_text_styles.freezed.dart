// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_text_styles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppTextTheme {
  AppTextStyle get pageTitle => throw _privateConstructorUsedError;
  AppTextStyle get pageSubtitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppTextThemeCopyWith<AppTextTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppTextThemeCopyWith<$Res> {
  factory $AppTextThemeCopyWith(
          AppTextTheme value, $Res Function(AppTextTheme) then) =
      _$AppTextThemeCopyWithImpl<$Res, AppTextTheme>;
  @useResult
  $Res call({AppTextStyle pageTitle, AppTextStyle pageSubtitle});
}

/// @nodoc
class _$AppTextThemeCopyWithImpl<$Res, $Val extends AppTextTheme>
    implements $AppTextThemeCopyWith<$Res> {
  _$AppTextThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageTitle = null,
    Object? pageSubtitle = null,
  }) {
    return _then(_value.copyWith(
      pageTitle: null == pageTitle
          ? _value.pageTitle
          : pageTitle // ignore: cast_nullable_to_non_nullable
              as AppTextStyle,
      pageSubtitle: null == pageSubtitle
          ? _value.pageSubtitle
          : pageSubtitle // ignore: cast_nullable_to_non_nullable
              as AppTextStyle,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppTextThemeImplCopyWith<$Res>
    implements $AppTextThemeCopyWith<$Res> {
  factory _$$AppTextThemeImplCopyWith(
          _$AppTextThemeImpl value, $Res Function(_$AppTextThemeImpl) then) =
      __$$AppTextThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppTextStyle pageTitle, AppTextStyle pageSubtitle});
}

/// @nodoc
class __$$AppTextThemeImplCopyWithImpl<$Res>
    extends _$AppTextThemeCopyWithImpl<$Res, _$AppTextThemeImpl>
    implements _$$AppTextThemeImplCopyWith<$Res> {
  __$$AppTextThemeImplCopyWithImpl(
      _$AppTextThemeImpl _value, $Res Function(_$AppTextThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageTitle = null,
    Object? pageSubtitle = null,
  }) {
    return _then(_$AppTextThemeImpl(
      pageTitle: null == pageTitle
          ? _value.pageTitle
          : pageTitle // ignore: cast_nullable_to_non_nullable
              as AppTextStyle,
      pageSubtitle: null == pageSubtitle
          ? _value.pageSubtitle
          : pageSubtitle // ignore: cast_nullable_to_non_nullable
              as AppTextStyle,
    ));
  }
}

/// @nodoc

class _$AppTextThemeImpl extends _AppTextTheme {
  const _$AppTextThemeImpl(
      {required this.pageTitle, required this.pageSubtitle})
      : super._();

  @override
  final AppTextStyle pageTitle;
  @override
  final AppTextStyle pageSubtitle;

  @override
  String toString() {
    return 'AppTextTheme(pageTitle: $pageTitle, pageSubtitle: $pageSubtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppTextThemeImpl &&
            (identical(other.pageTitle, pageTitle) ||
                other.pageTitle == pageTitle) &&
            (identical(other.pageSubtitle, pageSubtitle) ||
                other.pageSubtitle == pageSubtitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageTitle, pageSubtitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppTextThemeImplCopyWith<_$AppTextThemeImpl> get copyWith =>
      __$$AppTextThemeImplCopyWithImpl<_$AppTextThemeImpl>(this, _$identity);
}

abstract class _AppTextTheme extends AppTextTheme {
  const factory _AppTextTheme(
      {required final AppTextStyle pageTitle,
      required final AppTextStyle pageSubtitle}) = _$AppTextThemeImpl;
  const _AppTextTheme._() : super._();

  @override
  AppTextStyle get pageTitle;
  @override
  AppTextStyle get pageSubtitle;
  @override
  @JsonKey(ignore: true)
  _$$AppTextThemeImplCopyWith<_$AppTextThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
