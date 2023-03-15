// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'title_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TitleType _$TitleTypeFromJson(Map<String, dynamic> json) {
  return _TitleType.fromJson(json);
}

/// @nodoc
mixin _$TitleType {
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'isSeries')
  bool? get isSeries => throw _privateConstructorUsedError;
  @JsonKey(name: 'isEpisode')
  bool? get isEpisode => throw _privateConstructorUsedError;
  @JsonKey(name: '__typename')
  String? get typeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitleTypeCopyWith<TitleType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleTypeCopyWith<$Res> {
  factory $TitleTypeCopyWith(TitleType value, $Res Function(TitleType) then) =
      _$TitleTypeCopyWithImpl<$Res, TitleType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String? text,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'isSeries') bool? isSeries,
      @JsonKey(name: 'isEpisode') bool? isEpisode,
      @JsonKey(name: '__typename') String? typeName});
}

/// @nodoc
class _$TitleTypeCopyWithImpl<$Res, $Val extends TitleType>
    implements $TitleTypeCopyWith<$Res> {
  _$TitleTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? id = freezed,
    Object? isSeries = freezed,
    Object? isEpisode = freezed,
    Object? typeName = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeries: freezed == isSeries
          ? _value.isSeries
          : isSeries // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEpisode: freezed == isEpisode
          ? _value.isEpisode
          : isEpisode // ignore: cast_nullable_to_non_nullable
              as bool?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TitleTypeCopyWith<$Res> implements $TitleTypeCopyWith<$Res> {
  factory _$$_TitleTypeCopyWith(
          _$_TitleType value, $Res Function(_$_TitleType) then) =
      __$$_TitleTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String? text,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'isSeries') bool? isSeries,
      @JsonKey(name: 'isEpisode') bool? isEpisode,
      @JsonKey(name: '__typename') String? typeName});
}

/// @nodoc
class __$$_TitleTypeCopyWithImpl<$Res>
    extends _$TitleTypeCopyWithImpl<$Res, _$_TitleType>
    implements _$$_TitleTypeCopyWith<$Res> {
  __$$_TitleTypeCopyWithImpl(
      _$_TitleType _value, $Res Function(_$_TitleType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? id = freezed,
    Object? isSeries = freezed,
    Object? isEpisode = freezed,
    Object? typeName = freezed,
  }) {
    return _then(_$_TitleType(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeries: freezed == isSeries
          ? _value.isSeries
          : isSeries // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEpisode: freezed == isEpisode
          ? _value.isEpisode
          : isEpisode // ignore: cast_nullable_to_non_nullable
              as bool?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TitleType implements _TitleType {
  const _$_TitleType(
      {@JsonKey(name: 'text') this.text,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'isSeries') this.isSeries,
      @JsonKey(name: 'isEpisode') this.isEpisode,
      @JsonKey(name: '__typename') this.typeName});

  factory _$_TitleType.fromJson(Map<String, dynamic> json) =>
      _$$_TitleTypeFromJson(json);

  @override
  @JsonKey(name: 'text')
  final String? text;
  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'isSeries')
  final bool? isSeries;
  @override
  @JsonKey(name: 'isEpisode')
  final bool? isEpisode;
  @override
  @JsonKey(name: '__typename')
  final String? typeName;

  @override
  String toString() {
    return 'TitleType(text: $text, id: $id, isSeries: $isSeries, isEpisode: $isEpisode, typeName: $typeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleType &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isSeries, isSeries) ||
                other.isSeries == isSeries) &&
            (identical(other.isEpisode, isEpisode) ||
                other.isEpisode == isEpisode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, text, id, isSeries, isEpisode, typeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TitleTypeCopyWith<_$_TitleType> get copyWith =>
      __$$_TitleTypeCopyWithImpl<_$_TitleType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TitleTypeToJson(
      this,
    );
  }
}

abstract class _TitleType implements TitleType {
  const factory _TitleType(
      {@JsonKey(name: 'text') final String? text,
      @JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'isSeries') final bool? isSeries,
      @JsonKey(name: 'isEpisode') final bool? isEpisode,
      @JsonKey(name: '__typename') final String? typeName}) = _$_TitleType;

  factory _TitleType.fromJson(Map<String, dynamic> json) =
      _$_TitleType.fromJson;

  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'isSeries')
  bool? get isSeries;
  @override
  @JsonKey(name: 'isEpisode')
  bool? get isEpisode;
  @override
  @JsonKey(name: '__typename')
  String? get typeName;
  @override
  @JsonKey(ignore: true)
  _$$_TitleTypeCopyWith<_$_TitleType> get copyWith =>
      throw _privateConstructorUsedError;
}
