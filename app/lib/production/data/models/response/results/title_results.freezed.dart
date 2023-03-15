// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'title_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TitleResults _$TitleResultsFromJson(Map<String, dynamic> json) {
  return _TitleResults.fromJson(json);
}

/// @nodoc
mixin _$TitleResults {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'primaryImage')
  PrimaryImage? get primaryImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'titleType')
  TitleType? get titleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'titleText')
  TitleText? get titleText => throw _privateConstructorUsedError;
  @JsonKey(name: 'releaseYear')
  ReleaseYear? get releaseYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'releaseDate')
  ReleaseDate? get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitleResultsCopyWith<TitleResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleResultsCopyWith<$Res> {
  factory $TitleResultsCopyWith(
          TitleResults value, $Res Function(TitleResults) then) =
      _$TitleResultsCopyWithImpl<$Res, TitleResults>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'primaryImage') PrimaryImage? primaryImage,
      @JsonKey(name: 'titleType') TitleType? titleType,
      @JsonKey(name: 'titleText') TitleText? titleText,
      @JsonKey(name: 'releaseYear') ReleaseYear? releaseYear,
      @JsonKey(name: 'releaseDate') ReleaseDate? releaseDate});

  $PrimaryImageCopyWith<$Res>? get primaryImage;
  $TitleTypeCopyWith<$Res>? get titleType;
  $ReleaseYearCopyWith<$Res>? get releaseYear;
  $ReleaseDateCopyWith<$Res>? get releaseDate;
}

/// @nodoc
class _$TitleResultsCopyWithImpl<$Res, $Val extends TitleResults>
    implements $TitleResultsCopyWith<$Res> {
  _$TitleResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? primaryImage = freezed,
    Object? titleType = freezed,
    Object? titleText = freezed,
    Object? releaseYear = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryImage: freezed == primaryImage
          ? _value.primaryImage
          : primaryImage // ignore: cast_nullable_to_non_nullable
              as PrimaryImage?,
      titleType: freezed == titleType
          ? _value.titleType
          : titleType // ignore: cast_nullable_to_non_nullable
              as TitleType?,
      titleText: freezed == titleText
          ? _value.titleText
          : titleText // ignore: cast_nullable_to_non_nullable
              as TitleText?,
      releaseYear: freezed == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as ReleaseYear?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as ReleaseDate?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrimaryImageCopyWith<$Res>? get primaryImage {
    if (_value.primaryImage == null) {
      return null;
    }

    return $PrimaryImageCopyWith<$Res>(_value.primaryImage!, (value) {
      return _then(_value.copyWith(primaryImage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TitleTypeCopyWith<$Res>? get titleType {
    if (_value.titleType == null) {
      return null;
    }

    return $TitleTypeCopyWith<$Res>(_value.titleType!, (value) {
      return _then(_value.copyWith(titleType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReleaseYearCopyWith<$Res>? get releaseYear {
    if (_value.releaseYear == null) {
      return null;
    }

    return $ReleaseYearCopyWith<$Res>(_value.releaseYear!, (value) {
      return _then(_value.copyWith(releaseYear: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReleaseDateCopyWith<$Res>? get releaseDate {
    if (_value.releaseDate == null) {
      return null;
    }

    return $ReleaseDateCopyWith<$Res>(_value.releaseDate!, (value) {
      return _then(_value.copyWith(releaseDate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TitleResultsCopyWith<$Res>
    implements $TitleResultsCopyWith<$Res> {
  factory _$$_TitleResultsCopyWith(
          _$_TitleResults value, $Res Function(_$_TitleResults) then) =
      __$$_TitleResultsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'primaryImage') PrimaryImage? primaryImage,
      @JsonKey(name: 'titleType') TitleType? titleType,
      @JsonKey(name: 'titleText') TitleText? titleText,
      @JsonKey(name: 'releaseYear') ReleaseYear? releaseYear,
      @JsonKey(name: 'releaseDate') ReleaseDate? releaseDate});

  @override
  $PrimaryImageCopyWith<$Res>? get primaryImage;
  @override
  $TitleTypeCopyWith<$Res>? get titleType;
  @override
  $ReleaseYearCopyWith<$Res>? get releaseYear;
  @override
  $ReleaseDateCopyWith<$Res>? get releaseDate;
}

/// @nodoc
class __$$_TitleResultsCopyWithImpl<$Res>
    extends _$TitleResultsCopyWithImpl<$Res, _$_TitleResults>
    implements _$$_TitleResultsCopyWith<$Res> {
  __$$_TitleResultsCopyWithImpl(
      _$_TitleResults _value, $Res Function(_$_TitleResults) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? primaryImage = freezed,
    Object? titleType = freezed,
    Object? titleText = freezed,
    Object? releaseYear = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_$_TitleResults(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryImage: freezed == primaryImage
          ? _value.primaryImage
          : primaryImage // ignore: cast_nullable_to_non_nullable
              as PrimaryImage?,
      titleType: freezed == titleType
          ? _value.titleType
          : titleType // ignore: cast_nullable_to_non_nullable
              as TitleType?,
      titleText: freezed == titleText
          ? _value.titleText
          : titleText // ignore: cast_nullable_to_non_nullable
              as TitleText?,
      releaseYear: freezed == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as ReleaseYear?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as ReleaseDate?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TitleResults implements _TitleResults {
  const _$_TitleResults(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'primaryImage') this.primaryImage,
      @JsonKey(name: 'titleType') this.titleType,
      @JsonKey(name: 'titleText') this.titleText,
      @JsonKey(name: 'releaseYear') this.releaseYear,
      @JsonKey(name: 'releaseDate') this.releaseDate});

  factory _$_TitleResults.fromJson(Map<String, dynamic> json) =>
      _$$_TitleResultsFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'primaryImage')
  final PrimaryImage? primaryImage;
  @override
  @JsonKey(name: 'titleType')
  final TitleType? titleType;
  @override
  @JsonKey(name: 'titleText')
  final TitleText? titleText;
  @override
  @JsonKey(name: 'releaseYear')
  final ReleaseYear? releaseYear;
  @override
  @JsonKey(name: 'releaseDate')
  final ReleaseDate? releaseDate;

  @override
  String toString() {
    return 'TitleResults(id: $id, primaryImage: $primaryImage, titleType: $titleType, titleText: $titleText, releaseYear: $releaseYear, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleResults &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.primaryImage, primaryImage) ||
                other.primaryImage == primaryImage) &&
            (identical(other.titleType, titleType) ||
                other.titleType == titleType) &&
            (identical(other.titleText, titleText) ||
                other.titleText == titleText) &&
            (identical(other.releaseYear, releaseYear) ||
                other.releaseYear == releaseYear) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, primaryImage, titleType,
      titleText, releaseYear, releaseDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TitleResultsCopyWith<_$_TitleResults> get copyWith =>
      __$$_TitleResultsCopyWithImpl<_$_TitleResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TitleResultsToJson(
      this,
    );
  }
}

abstract class _TitleResults implements TitleResults {
  const factory _TitleResults(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'primaryImage') final PrimaryImage? primaryImage,
          @JsonKey(name: 'titleType') final TitleType? titleType,
          @JsonKey(name: 'titleText') final TitleText? titleText,
          @JsonKey(name: 'releaseYear') final ReleaseYear? releaseYear,
          @JsonKey(name: 'releaseDate') final ReleaseDate? releaseDate}) =
      _$_TitleResults;

  factory _TitleResults.fromJson(Map<String, dynamic> json) =
      _$_TitleResults.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'primaryImage')
  PrimaryImage? get primaryImage;
  @override
  @JsonKey(name: 'titleType')
  TitleType? get titleType;
  @override
  @JsonKey(name: 'titleText')
  TitleText? get titleText;
  @override
  @JsonKey(name: 'releaseYear')
  ReleaseYear? get releaseYear;
  @override
  @JsonKey(name: 'releaseDate')
  ReleaseDate? get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$$_TitleResultsCopyWith<_$_TitleResults> get copyWith =>
      throw _privateConstructorUsedError;
}
