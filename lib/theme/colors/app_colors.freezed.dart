// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_colors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppColorTheme {
  Color get primary => throw _privateConstructorUsedError;
  Color get background => throw _privateConstructorUsedError;
  Color get buttonText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppColorThemeCopyWith<AppColorTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppColorThemeCopyWith<$Res> {
  factory $AppColorThemeCopyWith(
          AppColorTheme value, $Res Function(AppColorTheme) then) =
      _$AppColorThemeCopyWithImpl<$Res, AppColorTheme>;
  @useResult
  $Res call({Color primary, Color background, Color buttonText});
}

/// @nodoc
class _$AppColorThemeCopyWithImpl<$Res, $Val extends AppColorTheme>
    implements $AppColorThemeCopyWith<$Res> {
  _$AppColorThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? background = null,
    Object? buttonText = null,
  }) {
    return _then(_value.copyWith(
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Color,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as Color,
      buttonText: null == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppColorThemeImplCopyWith<$Res>
    implements $AppColorThemeCopyWith<$Res> {
  factory _$$AppColorThemeImplCopyWith(
          _$AppColorThemeImpl value, $Res Function(_$AppColorThemeImpl) then) =
      __$$AppColorThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color primary, Color background, Color buttonText});
}

/// @nodoc
class __$$AppColorThemeImplCopyWithImpl<$Res>
    extends _$AppColorThemeCopyWithImpl<$Res, _$AppColorThemeImpl>
    implements _$$AppColorThemeImplCopyWith<$Res> {
  __$$AppColorThemeImplCopyWithImpl(
      _$AppColorThemeImpl _value, $Res Function(_$AppColorThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? background = null,
    Object? buttonText = null,
  }) {
    return _then(_$AppColorThemeImpl(
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Color,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as Color,
      buttonText: null == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$AppColorThemeImpl implements _AppColorTheme {
  const _$AppColorThemeImpl(
      {required this.primary,
      required this.background,
      required this.buttonText});

  @override
  final Color primary;
  @override
  final Color background;
  @override
  final Color buttonText;

  @override
  String toString() {
    return 'AppColorTheme(primary: $primary, background: $background, buttonText: $buttonText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppColorThemeImpl &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.buttonText, buttonText) ||
                other.buttonText == buttonText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, primary, background, buttonText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppColorThemeImplCopyWith<_$AppColorThemeImpl> get copyWith =>
      __$$AppColorThemeImplCopyWithImpl<_$AppColorThemeImpl>(this, _$identity);
}

abstract class _AppColorTheme implements AppColorTheme {
  const factory _AppColorTheme(
      {required final Color primary,
      required final Color background,
      required final Color buttonText}) = _$AppColorThemeImpl;

  @override
  Color get primary;
  @override
  Color get background;
  @override
  Color get buttonText;
  @override
  @JsonKey(ignore: true)
  _$$AppColorThemeImplCopyWith<_$AppColorThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
