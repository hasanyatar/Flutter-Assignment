// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'primary_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrimaryImage _$PrimaryImageFromJson(Map<String, dynamic> json) {
  return _PrimaryImage.fromJson(json);
}

/// @nodoc
mixin _$PrimaryImage {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'caption')
  Caption? get caption => throw _privateConstructorUsedError;
  @JsonKey(name: '__typename')
  String? get typeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrimaryImageCopyWith<PrimaryImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryImageCopyWith<$Res> {
  factory $PrimaryImageCopyWith(
          PrimaryImage value, $Res Function(PrimaryImage) then) =
      _$PrimaryImageCopyWithImpl<$Res, PrimaryImage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'caption') Caption? caption,
      @JsonKey(name: '__typename') String? typeName});
}

/// @nodoc
class _$PrimaryImageCopyWithImpl<$Res, $Val extends PrimaryImage>
    implements $PrimaryImageCopyWith<$Res> {
  _$PrimaryImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
    Object? caption = freezed,
    Object? typeName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as Caption?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrimaryImageCopyWith<$Res>
    implements $PrimaryImageCopyWith<$Res> {
  factory _$$_PrimaryImageCopyWith(
          _$_PrimaryImage value, $Res Function(_$_PrimaryImage) then) =
      __$$_PrimaryImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'caption') Caption? caption,
      @JsonKey(name: '__typename') String? typeName});
}

/// @nodoc
class __$$_PrimaryImageCopyWithImpl<$Res>
    extends _$PrimaryImageCopyWithImpl<$Res, _$_PrimaryImage>
    implements _$$_PrimaryImageCopyWith<$Res> {
  __$$_PrimaryImageCopyWithImpl(
      _$_PrimaryImage _value, $Res Function(_$_PrimaryImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
    Object? caption = freezed,
    Object? typeName = freezed,
  }) {
    return _then(_$_PrimaryImage(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as Caption?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrimaryImage implements _PrimaryImage {
  const _$_PrimaryImage(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'width') this.width,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: '__typename') this.typeName});

  factory _$_PrimaryImage.fromJson(Map<String, dynamic> json) =>
      _$$_PrimaryImageFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'width')
  final int? width;
  @override
  @JsonKey(name: 'height')
  final int? height;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'caption')
  final Caption? caption;
  @override
  @JsonKey(name: '__typename')
  final String? typeName;

  @override
  String toString() {
    return 'PrimaryImage(id: $id, width: $width, height: $height, url: $url, caption: $caption, typeName: $typeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrimaryImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, width, height, url, caption, typeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrimaryImageCopyWith<_$_PrimaryImage> get copyWith =>
      __$$_PrimaryImageCopyWithImpl<_$_PrimaryImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrimaryImageToJson(
      this,
    );
  }
}

abstract class _PrimaryImage implements PrimaryImage {
  const factory _PrimaryImage(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'width') final int? width,
      @JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'caption') final Caption? caption,
      @JsonKey(name: '__typename') final String? typeName}) = _$_PrimaryImage;

  factory _PrimaryImage.fromJson(Map<String, dynamic> json) =
      _$_PrimaryImage.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'caption')
  Caption? get caption;
  @override
  @JsonKey(name: '__typename')
  String? get typeName;
  @override
  @JsonKey(ignore: true)
  _$$_PrimaryImageCopyWith<_$_PrimaryImage> get copyWith =>
      throw _privateConstructorUsedError;
}
