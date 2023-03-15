// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'release_year.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReleaseYear _$ReleaseYearFromJson(Map<String, dynamic> json) {
  return _ReleaseYear.fromJson(json);
}

/// @nodoc
mixin _$ReleaseYear {
  @JsonKey(name: 'year')
  int? get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'endYear')
  int? get month => throw _privateConstructorUsedError;
  @JsonKey(name: '__typename')
  String? get typeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReleaseYearCopyWith<ReleaseYear> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleaseYearCopyWith<$Res> {
  factory $ReleaseYearCopyWith(
          ReleaseYear value, $Res Function(ReleaseYear) then) =
      _$ReleaseYearCopyWithImpl<$Res, ReleaseYear>;
  @useResult
  $Res call(
      {@JsonKey(name: 'year') int? day,
      @JsonKey(name: 'endYear') int? month,
      @JsonKey(name: '__typename') String? typeName});
}

/// @nodoc
class _$ReleaseYearCopyWithImpl<$Res, $Val extends ReleaseYear>
    implements $ReleaseYearCopyWith<$Res> {
  _$ReleaseYearCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? typeName = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReleaseYearCopyWith<$Res>
    implements $ReleaseYearCopyWith<$Res> {
  factory _$$_ReleaseYearCopyWith(
          _$_ReleaseYear value, $Res Function(_$_ReleaseYear) then) =
      __$$_ReleaseYearCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'year') int? day,
      @JsonKey(name: 'endYear') int? month,
      @JsonKey(name: '__typename') String? typeName});
}

/// @nodoc
class __$$_ReleaseYearCopyWithImpl<$Res>
    extends _$ReleaseYearCopyWithImpl<$Res, _$_ReleaseYear>
    implements _$$_ReleaseYearCopyWith<$Res> {
  __$$_ReleaseYearCopyWithImpl(
      _$_ReleaseYear _value, $Res Function(_$_ReleaseYear) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? typeName = freezed,
  }) {
    return _then(_$_ReleaseYear(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReleaseYear implements _ReleaseYear {
  const _$_ReleaseYear(
      {@JsonKey(name: 'year') this.day,
      @JsonKey(name: 'endYear') this.month,
      @JsonKey(name: '__typename') this.typeName});

  factory _$_ReleaseYear.fromJson(Map<String, dynamic> json) =>
      _$$_ReleaseYearFromJson(json);

  @override
  @JsonKey(name: 'year')
  final int? day;
  @override
  @JsonKey(name: 'endYear')
  final int? month;
  @override
  @JsonKey(name: '__typename')
  final String? typeName;

  @override
  String toString() {
    return 'ReleaseYear(day: $day, month: $month, typeName: $typeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReleaseYear &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, month, typeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReleaseYearCopyWith<_$_ReleaseYear> get copyWith =>
      __$$_ReleaseYearCopyWithImpl<_$_ReleaseYear>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReleaseYearToJson(
      this,
    );
  }
}

abstract class _ReleaseYear implements ReleaseYear {
  const factory _ReleaseYear(
      {@JsonKey(name: 'year') final int? day,
      @JsonKey(name: 'endYear') final int? month,
      @JsonKey(name: '__typename') final String? typeName}) = _$_ReleaseYear;

  factory _ReleaseYear.fromJson(Map<String, dynamic> json) =
      _$_ReleaseYear.fromJson;

  @override
  @JsonKey(name: 'year')
  int? get day;
  @override
  @JsonKey(name: 'endYear')
  int? get month;
  @override
  @JsonKey(name: '__typename')
  String? get typeName;
  @override
  @JsonKey(ignore: true)
  _$$_ReleaseYearCopyWith<_$_ReleaseYear> get copyWith =>
      throw _privateConstructorUsedError;
}
