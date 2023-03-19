// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'titles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Titles _$TitlesFromJson(Map<String, dynamic> json) {
  return _Titles.fromJson(json);
}

/// @nodoc
mixin _$Titles {
  @JsonKey(name: 'page')
  String? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'entries')
  int? get titleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<TitleResults>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitlesCopyWith<Titles> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitlesCopyWith<$Res> {
  factory $TitlesCopyWith(Titles value, $Res Function(Titles) then) =
      _$TitlesCopyWithImpl<$Res, Titles>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') String? page,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'entries') int? titleType,
      @JsonKey(name: 'results') List<TitleResults>? results});
}

/// @nodoc
class _$TitlesCopyWithImpl<$Res, $Val extends Titles>
    implements $TitlesCopyWith<$Res> {
  _$TitlesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? next = freezed,
    Object? titleType = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      titleType: freezed == titleType
          ? _value.titleType
          : titleType // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TitleResults>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TitlesCopyWith<$Res> implements $TitlesCopyWith<$Res> {
  factory _$$_TitlesCopyWith(_$_Titles value, $Res Function(_$_Titles) then) =
      __$$_TitlesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') String? page,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'entries') int? titleType,
      @JsonKey(name: 'results') List<TitleResults>? results});
}

/// @nodoc
class __$$_TitlesCopyWithImpl<$Res>
    extends _$TitlesCopyWithImpl<$Res, _$_Titles>
    implements _$$_TitlesCopyWith<$Res> {
  __$$_TitlesCopyWithImpl(_$_Titles _value, $Res Function(_$_Titles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? next = freezed,
    Object? titleType = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_Titles(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      titleType: freezed == titleType
          ? _value.titleType
          : titleType // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TitleResults>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Titles implements _Titles {
  const _$_Titles(
      {@JsonKey(name: 'page') this.page,
      @JsonKey(name: 'next') this.next,
      @JsonKey(name: 'entries') this.titleType,
      @JsonKey(name: 'results') final List<TitleResults>? results})
      : _results = results;

  factory _$_Titles.fromJson(Map<String, dynamic> json) =>
      _$$_TitlesFromJson(json);

  @override
  @JsonKey(name: 'page')
  final String? page;
  @override
  @JsonKey(name: 'next')
  final String? next;
  @override
  @JsonKey(name: 'entries')
  final int? titleType;
  final List<TitleResults>? _results;
  @override
  @JsonKey(name: 'results')
  List<TitleResults>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Titles(page: $page, next: $next, titleType: $titleType, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Titles &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.titleType, titleType) ||
                other.titleType == titleType) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, next, titleType,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TitlesCopyWith<_$_Titles> get copyWith =>
      __$$_TitlesCopyWithImpl<_$_Titles>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TitlesToJson(
      this,
    );
  }
}

abstract class _Titles implements Titles {
  const factory _Titles(
      {@JsonKey(name: 'page') final String? page,
      @JsonKey(name: 'next') final String? next,
      @JsonKey(name: 'entries') final int? titleType,
      @JsonKey(name: 'results') final List<TitleResults>? results}) = _$_Titles;

  factory _Titles.fromJson(Map<String, dynamic> json) = _$_Titles.fromJson;

  @override
  @JsonKey(name: 'page')
  String? get page;
  @override
  @JsonKey(name: 'next')
  String? get next;
  @override
  @JsonKey(name: 'entries')
  int? get titleType;
  @override
  @JsonKey(name: 'results')
  List<TitleResults>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_TitlesCopyWith<_$_Titles> get copyWith =>
      throw _privateConstructorUsedError;
}
