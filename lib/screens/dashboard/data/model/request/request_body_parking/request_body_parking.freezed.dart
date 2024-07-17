// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_body_parking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestBodyParking _$RequestBodyParkingFromJson(Map<String, dynamic> json) {
  return _RequestBodyParking.fromJson(json);
}

/// @nodoc
mixin _$RequestBodyParking {
  String? get query => throw _privateConstructorUsedError;
  Variables? get variables => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestBodyParkingCopyWith<RequestBodyParking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestBodyParkingCopyWith<$Res> {
  factory $RequestBodyParkingCopyWith(
          RequestBodyParking value, $Res Function(RequestBodyParking) then) =
      _$RequestBodyParkingCopyWithImpl<$Res, RequestBodyParking>;
  @useResult
  $Res call({String? query, Variables? variables});

  $VariablesCopyWith<$Res>? get variables;
}

/// @nodoc
class _$RequestBodyParkingCopyWithImpl<$Res, $Val extends RequestBodyParking>
    implements $RequestBodyParkingCopyWith<$Res> {
  _$RequestBodyParkingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? variables = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      variables: freezed == variables
          ? _value.variables
          : variables // ignore: cast_nullable_to_non_nullable
              as Variables?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VariablesCopyWith<$Res>? get variables {
    if (_value.variables == null) {
      return null;
    }

    return $VariablesCopyWith<$Res>(_value.variables!, (value) {
      return _then(_value.copyWith(variables: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RequestBodyParkingImplCopyWith<$Res>
    implements $RequestBodyParkingCopyWith<$Res> {
  factory _$$RequestBodyParkingImplCopyWith(_$RequestBodyParkingImpl value,
          $Res Function(_$RequestBodyParkingImpl) then) =
      __$$RequestBodyParkingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query, Variables? variables});

  @override
  $VariablesCopyWith<$Res>? get variables;
}

/// @nodoc
class __$$RequestBodyParkingImplCopyWithImpl<$Res>
    extends _$RequestBodyParkingCopyWithImpl<$Res, _$RequestBodyParkingImpl>
    implements _$$RequestBodyParkingImplCopyWith<$Res> {
  __$$RequestBodyParkingImplCopyWithImpl(_$RequestBodyParkingImpl _value,
      $Res Function(_$RequestBodyParkingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? variables = freezed,
  }) {
    return _then(_$RequestBodyParkingImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      variables: freezed == variables
          ? _value.variables
          : variables // ignore: cast_nullable_to_non_nullable
              as Variables?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestBodyParkingImpl implements _RequestBodyParking {
  const _$RequestBodyParkingImpl({this.query, this.variables});

  factory _$RequestBodyParkingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestBodyParkingImplFromJson(json);

  @override
  final String? query;
  @override
  final Variables? variables;

  @override
  String toString() {
    return 'RequestBodyParking(query: $query, variables: $variables)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestBodyParkingImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.variables, variables) ||
                other.variables == variables));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, query, variables);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestBodyParkingImplCopyWith<_$RequestBodyParkingImpl> get copyWith =>
      __$$RequestBodyParkingImplCopyWithImpl<_$RequestBodyParkingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestBodyParkingImplToJson(
      this,
    );
  }
}

abstract class _RequestBodyParking implements RequestBodyParking {
  const factory _RequestBodyParking(
      {final String? query,
      final Variables? variables}) = _$RequestBodyParkingImpl;

  factory _RequestBodyParking.fromJson(Map<String, dynamic> json) =
      _$RequestBodyParkingImpl.fromJson;

  @override
  String? get query;
  @override
  Variables? get variables;
  @override
  @JsonKey(ignore: true)
  _$$RequestBodyParkingImplCopyWith<_$RequestBodyParkingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Variables _$VariablesFromJson(Map<String, dynamic> json) {
  return _Variables.fromJson(json);
}

/// @nodoc
mixin _$Variables {
  int? get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariablesCopyWith<Variables> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariablesCopyWith<$Res> {
  factory $VariablesCopyWith(Variables value, $Res Function(Variables) then) =
      _$VariablesCopyWithImpl<$Res, Variables>;
  @useResult
  $Res call({int? limit, int? offset});
}

/// @nodoc
class _$VariablesCopyWithImpl<$Res, $Val extends Variables>
    implements $VariablesCopyWith<$Res> {
  _$VariablesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariablesImplCopyWith<$Res>
    implements $VariablesCopyWith<$Res> {
  factory _$$VariablesImplCopyWith(
          _$VariablesImpl value, $Res Function(_$VariablesImpl) then) =
      __$$VariablesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? limit, int? offset});
}

/// @nodoc
class __$$VariablesImplCopyWithImpl<$Res>
    extends _$VariablesCopyWithImpl<$Res, _$VariablesImpl>
    implements _$$VariablesImplCopyWith<$Res> {
  __$$VariablesImplCopyWithImpl(
      _$VariablesImpl _value, $Res Function(_$VariablesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$VariablesImpl(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariablesImpl implements _Variables {
  const _$VariablesImpl({this.limit, this.offset});

  factory _$VariablesImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariablesImplFromJson(json);

  @override
  final int? limit;
  @override
  final int? offset;

  @override
  String toString() {
    return 'Variables(limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariablesImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariablesImplCopyWith<_$VariablesImpl> get copyWith =>
      __$$VariablesImplCopyWithImpl<_$VariablesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariablesImplToJson(
      this,
    );
  }
}

abstract class _Variables implements Variables {
  const factory _Variables({final int? limit, final int? offset}) =
      _$VariablesImpl;

  factory _Variables.fromJson(Map<String, dynamic> json) =
      _$VariablesImpl.fromJson;

  @override
  int? get limit;
  @override
  int? get offset;
  @override
  @JsonKey(ignore: true)
  _$$VariablesImplCopyWith<_$VariablesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
