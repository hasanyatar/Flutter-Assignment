// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'release_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReleaseDate _$ReleaseDateFromJson(Map<String, dynamic> json) {
  return _ReleaseDate.fromJson(json);
}

/// @nodoc
mixin _$ReleaseDate {
  @JsonKey(name: 'day')
  int? get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'month')
  int? get month => throw _privateConstructorUsedError;
  @JsonKey(name: 'year')
  int? get year => throw _privateConstructorUsedError;
  @JsonKey(name: '__typename')
  String? get typeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReleaseDateCopyWith<ReleaseDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleaseDateCopyWith<$Res> {
  factory $ReleaseDateCopyWith(
          ReleaseDate value, $Res Function(ReleaseDate) then) =
      _$ReleaseDateCopyWithImpl<$Res, ReleaseDate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'day') int? day,
      @JsonKey(name: 'month') int? month,
      @JsonKey(name: 'year') int? year,
      @JsonKey(name: '__typename') String? typeName});
}

/// @nodoc
class _$ReleaseDateCopyWithImpl<$Res, $Val extends ReleaseDate>
    implements $ReleaseDateCopyWith<$Res> {
  _$ReleaseDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
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
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReleaseDateCopyWith<$Res>
    implements $ReleaseDateCopyWith<$Res> {
  factory _$$_ReleaseDateCopyWith(
          _$_ReleaseDate value, $Res Function(_$_ReleaseDate) then) =
      __$$_ReleaseDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'day') int? day,
      @JsonKey(name: 'month') int? month,
      @JsonKey(name: 'year') int? year,
      @JsonKey(name: '__typename') String? typeName});
}

/// @nodoc
class __$$_ReleaseDateCopyWithImpl<$Res>
    extends _$ReleaseDateCopyWithImpl<$Res, _$_ReleaseDate>
    implements _$$_ReleaseDateCopyWith<$Res> {
  __$$_ReleaseDateCopyWithImpl(
      _$_ReleaseDate _value, $Res Function(_$_ReleaseDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? typeName = freezed,
  }) {
    return _then(_$_ReleaseDate(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
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
class _$_ReleaseDate implements _ReleaseDate {
  const _$_ReleaseDate(
      {@JsonKey(name: 'day') this.day,
      @JsonKey(name: 'month') this.month,
      @JsonKey(name: 'year') this.year,
      @JsonKey(name: '__typename') this.typeName});

  factory _$_ReleaseDate.fromJson(Map<String, dynamic> json) =>
      _$$_ReleaseDateFromJson(json);

  @override
  @JsonKey(name: 'day')
  final int? day;
  @override
  @JsonKey(name: 'month')
  final int? month;
  @override
  @JsonKey(name: 'year')
  final int? year;
  @override
  @JsonKey(name: '__typename')
  final String? typeName;

  @override
  String toString() {
    return 'ReleaseDate(day: $day, month: $month, year: $year, typeName: $typeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReleaseDate &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, month, year, typeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReleaseDateCopyWith<_$_ReleaseDate> get copyWith =>
      __$$_ReleaseDateCopyWithImpl<_$_ReleaseDate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReleaseDateToJson(
      this,
    );
  }
}

abstract class _ReleaseDate implements ReleaseDate {
  const factory _ReleaseDate(
      {@JsonKey(name: 'day') final int? day,
      @JsonKey(name: 'month') final int? month,
      @JsonKey(name: 'year') final int? year,
      @JsonKey(name: '__typename') final String? typeName}) = _$_ReleaseDate;

  factory _ReleaseDate.fromJson(Map<String, dynamic> json) =
      _$_ReleaseDate.fromJson;

  @override
  @JsonKey(name: 'day')
  int? get day;
  @override
  @JsonKey(name: 'month')
  int? get month;
  @override
  @JsonKey(name: 'year')
  int? get year;
  @override
  @JsonKey(name: '__typename')
  String? get typeName;
  @override
  @JsonKey(ignore: true)
  _$$_ReleaseDateCopyWith<_$_ReleaseDate> get copyWith =>
      throw _privateConstructorUsedError;
}
