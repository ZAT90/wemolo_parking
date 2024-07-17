// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_body_distincts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestBodyDisticts _$RequestBodyDistictsFromJson(Map<String, dynamic> json) {
  return _RequestBodyDisticts.fromJson(json);
}

/// @nodoc
mixin _$RequestBodyDisticts {
  String? get query => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestBodyDistictsCopyWith<RequestBodyDisticts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestBodyDistictsCopyWith<$Res> {
  factory $RequestBodyDistictsCopyWith(
          RequestBodyDisticts value, $Res Function(RequestBodyDisticts) then) =
      _$RequestBodyDistictsCopyWithImpl<$Res, RequestBodyDisticts>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class _$RequestBodyDistictsCopyWithImpl<$Res, $Val extends RequestBodyDisticts>
    implements $RequestBodyDistictsCopyWith<$Res> {
  _$RequestBodyDistictsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestBodyDistictsImplCopyWith<$Res>
    implements $RequestBodyDistictsCopyWith<$Res> {
  factory _$$RequestBodyDistictsImplCopyWith(_$RequestBodyDistictsImpl value,
          $Res Function(_$RequestBodyDistictsImpl) then) =
      __$$RequestBodyDistictsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$RequestBodyDistictsImplCopyWithImpl<$Res>
    extends _$RequestBodyDistictsCopyWithImpl<$Res, _$RequestBodyDistictsImpl>
    implements _$$RequestBodyDistictsImplCopyWith<$Res> {
  __$$RequestBodyDistictsImplCopyWithImpl(_$RequestBodyDistictsImpl _value,
      $Res Function(_$RequestBodyDistictsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$RequestBodyDistictsImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestBodyDistictsImpl implements _RequestBodyDisticts {
  const _$RequestBodyDistictsImpl({this.query});

  factory _$RequestBodyDistictsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestBodyDistictsImplFromJson(json);

  @override
  final String? query;

  @override
  String toString() {
    return 'RequestBodyDisticts(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestBodyDistictsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestBodyDistictsImplCopyWith<_$RequestBodyDistictsImpl> get copyWith =>
      __$$RequestBodyDistictsImplCopyWithImpl<_$RequestBodyDistictsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestBodyDistictsImplToJson(
      this,
    );
  }
}

abstract class _RequestBodyDisticts implements RequestBodyDisticts {
  const factory _RequestBodyDisticts({final String? query}) =
      _$RequestBodyDistictsImpl;

  factory _RequestBodyDisticts.fromJson(Map<String, dynamic> json) =
      _$RequestBodyDistictsImpl.fromJson;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$RequestBodyDistictsImplCopyWith<_$RequestBodyDistictsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
