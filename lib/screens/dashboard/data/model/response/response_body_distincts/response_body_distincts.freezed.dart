// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_body_distincts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseBodyDistincts _$ResponseBodyDistinctsFromJson(
    Map<String, dynamic> json) {
  return _ResponseBodyDistincts.fromJson(json);
}

/// @nodoc
mixin _$ResponseBodyDistincts {
  DistinctData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBodyDistinctsCopyWith<ResponseBodyDistincts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBodyDistinctsCopyWith<$Res> {
  factory $ResponseBodyDistinctsCopyWith(ResponseBodyDistincts value,
          $Res Function(ResponseBodyDistincts) then) =
      _$ResponseBodyDistinctsCopyWithImpl<$Res, ResponseBodyDistincts>;
  @useResult
  $Res call({DistinctData? data});

  $DistinctDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseBodyDistinctsCopyWithImpl<$Res,
        $Val extends ResponseBodyDistincts>
    implements $ResponseBodyDistinctsCopyWith<$Res> {
  _$ResponseBodyDistinctsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DistinctData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DistinctDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DistinctDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseBodyDistinctsImplCopyWith<$Res>
    implements $ResponseBodyDistinctsCopyWith<$Res> {
  factory _$$ResponseBodyDistinctsImplCopyWith(
          _$ResponseBodyDistinctsImpl value,
          $Res Function(_$ResponseBodyDistinctsImpl) then) =
      __$$ResponseBodyDistinctsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DistinctData? data});

  @override
  $DistinctDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseBodyDistinctsImplCopyWithImpl<$Res>
    extends _$ResponseBodyDistinctsCopyWithImpl<$Res,
        _$ResponseBodyDistinctsImpl>
    implements _$$ResponseBodyDistinctsImplCopyWith<$Res> {
  __$$ResponseBodyDistinctsImplCopyWithImpl(_$ResponseBodyDistinctsImpl _value,
      $Res Function(_$ResponseBodyDistinctsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResponseBodyDistinctsImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DistinctData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBodyDistinctsImpl implements _ResponseBodyDistincts {
  const _$ResponseBodyDistinctsImpl({this.data});

  factory _$ResponseBodyDistinctsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseBodyDistinctsImplFromJson(json);

  @override
  final DistinctData? data;

  @override
  String toString() {
    return 'ResponseBodyDistincts(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBodyDistinctsImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseBodyDistinctsImplCopyWith<_$ResponseBodyDistinctsImpl>
      get copyWith => __$$ResponseBodyDistinctsImplCopyWithImpl<
          _$ResponseBodyDistinctsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBodyDistinctsImplToJson(
      this,
    );
  }
}

abstract class _ResponseBodyDistincts implements ResponseBodyDistincts {
  const factory _ResponseBodyDistincts({final DistinctData? data}) =
      _$ResponseBodyDistinctsImpl;

  factory _ResponseBodyDistincts.fromJson(Map<String, dynamic> json) =
      _$ResponseBodyDistinctsImpl.fromJson;

  @override
  DistinctData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseBodyDistinctsImplCopyWith<_$ResponseBodyDistinctsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DistinctData _$DistinctDataFromJson(Map<String, dynamic> json) {
  return _DistinctData.fromJson(json);
}

/// @nodoc
mixin _$DistinctData {
  List<DistinctStatus>? get distinctStatuses =>
      throw _privateConstructorUsedError;
  List<DistinctType>? get distinctTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistinctDataCopyWith<DistinctData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistinctDataCopyWith<$Res> {
  factory $DistinctDataCopyWith(
          DistinctData value, $Res Function(DistinctData) then) =
      _$DistinctDataCopyWithImpl<$Res, DistinctData>;
  @useResult
  $Res call(
      {List<DistinctStatus>? distinctStatuses,
      List<DistinctType>? distinctTypes});
}

/// @nodoc
class _$DistinctDataCopyWithImpl<$Res, $Val extends DistinctData>
    implements $DistinctDataCopyWith<$Res> {
  _$DistinctDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distinctStatuses = freezed,
    Object? distinctTypes = freezed,
  }) {
    return _then(_value.copyWith(
      distinctStatuses: freezed == distinctStatuses
          ? _value.distinctStatuses
          : distinctStatuses // ignore: cast_nullable_to_non_nullable
              as List<DistinctStatus>?,
      distinctTypes: freezed == distinctTypes
          ? _value.distinctTypes
          : distinctTypes // ignore: cast_nullable_to_non_nullable
              as List<DistinctType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistinctDataImplCopyWith<$Res>
    implements $DistinctDataCopyWith<$Res> {
  factory _$$DistinctDataImplCopyWith(
          _$DistinctDataImpl value, $Res Function(_$DistinctDataImpl) then) =
      __$$DistinctDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DistinctStatus>? distinctStatuses,
      List<DistinctType>? distinctTypes});
}

/// @nodoc
class __$$DistinctDataImplCopyWithImpl<$Res>
    extends _$DistinctDataCopyWithImpl<$Res, _$DistinctDataImpl>
    implements _$$DistinctDataImplCopyWith<$Res> {
  __$$DistinctDataImplCopyWithImpl(
      _$DistinctDataImpl _value, $Res Function(_$DistinctDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distinctStatuses = freezed,
    Object? distinctTypes = freezed,
  }) {
    return _then(_$DistinctDataImpl(
      distinctStatuses: freezed == distinctStatuses
          ? _value._distinctStatuses
          : distinctStatuses // ignore: cast_nullable_to_non_nullable
              as List<DistinctStatus>?,
      distinctTypes: freezed == distinctTypes
          ? _value._distinctTypes
          : distinctTypes // ignore: cast_nullable_to_non_nullable
              as List<DistinctType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistinctDataImpl implements _DistinctData {
  const _$DistinctDataImpl(
      {final List<DistinctStatus>? distinctStatuses,
      final List<DistinctType>? distinctTypes})
      : _distinctStatuses = distinctStatuses,
        _distinctTypes = distinctTypes;

  factory _$DistinctDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistinctDataImplFromJson(json);

  final List<DistinctStatus>? _distinctStatuses;
  @override
  List<DistinctStatus>? get distinctStatuses {
    final value = _distinctStatuses;
    if (value == null) return null;
    if (_distinctStatuses is EqualUnmodifiableListView)
      return _distinctStatuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DistinctType>? _distinctTypes;
  @override
  List<DistinctType>? get distinctTypes {
    final value = _distinctTypes;
    if (value == null) return null;
    if (_distinctTypes is EqualUnmodifiableListView) return _distinctTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DistinctData(distinctStatuses: $distinctStatuses, distinctTypes: $distinctTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistinctDataImpl &&
            const DeepCollectionEquality()
                .equals(other._distinctStatuses, _distinctStatuses) &&
            const DeepCollectionEquality()
                .equals(other._distinctTypes, _distinctTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_distinctStatuses),
      const DeepCollectionEquality().hash(_distinctTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistinctDataImplCopyWith<_$DistinctDataImpl> get copyWith =>
      __$$DistinctDataImplCopyWithImpl<_$DistinctDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistinctDataImplToJson(
      this,
    );
  }
}

abstract class _DistinctData implements DistinctData {
  const factory _DistinctData(
      {final List<DistinctStatus>? distinctStatuses,
      final List<DistinctType>? distinctTypes}) = _$DistinctDataImpl;

  factory _DistinctData.fromJson(Map<String, dynamic> json) =
      _$DistinctDataImpl.fromJson;

  @override
  List<DistinctStatus>? get distinctStatuses;
  @override
  List<DistinctType>? get distinctTypes;
  @override
  @JsonKey(ignore: true)
  _$$DistinctDataImplCopyWith<_$DistinctDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DistinctStatus _$DistinctStatusFromJson(Map<String, dynamic> json) {
  return _DistinctStatus.fromJson(json);
}

/// @nodoc
mixin _$DistinctStatus {
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistinctStatusCopyWith<DistinctStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistinctStatusCopyWith<$Res> {
  factory $DistinctStatusCopyWith(
          DistinctStatus value, $Res Function(DistinctStatus) then) =
      _$DistinctStatusCopyWithImpl<$Res, DistinctStatus>;
  @useResult
  $Res call({String? status});
}

/// @nodoc
class _$DistinctStatusCopyWithImpl<$Res, $Val extends DistinctStatus>
    implements $DistinctStatusCopyWith<$Res> {
  _$DistinctStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistinctStatusImplCopyWith<$Res>
    implements $DistinctStatusCopyWith<$Res> {
  factory _$$DistinctStatusImplCopyWith(_$DistinctStatusImpl value,
          $Res Function(_$DistinctStatusImpl) then) =
      __$$DistinctStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$DistinctStatusImplCopyWithImpl<$Res>
    extends _$DistinctStatusCopyWithImpl<$Res, _$DistinctStatusImpl>
    implements _$$DistinctStatusImplCopyWith<$Res> {
  __$$DistinctStatusImplCopyWithImpl(
      _$DistinctStatusImpl _value, $Res Function(_$DistinctStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$DistinctStatusImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistinctStatusImpl implements _DistinctStatus {
  const _$DistinctStatusImpl({this.status});

  factory _$DistinctStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistinctStatusImplFromJson(json);

  @override
  final String? status;

  @override
  String toString() {
    return 'DistinctStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistinctStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistinctStatusImplCopyWith<_$DistinctStatusImpl> get copyWith =>
      __$$DistinctStatusImplCopyWithImpl<_$DistinctStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistinctStatusImplToJson(
      this,
    );
  }
}

abstract class _DistinctStatus implements DistinctStatus {
  const factory _DistinctStatus({final String? status}) = _$DistinctStatusImpl;

  factory _DistinctStatus.fromJson(Map<String, dynamic> json) =
      _$DistinctStatusImpl.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$DistinctStatusImplCopyWith<_$DistinctStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DistinctType _$DistinctTypeFromJson(Map<String, dynamic> json) {
  return _DistinctType.fromJson(json);
}

/// @nodoc
mixin _$DistinctType {
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistinctTypeCopyWith<DistinctType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistinctTypeCopyWith<$Res> {
  factory $DistinctTypeCopyWith(
          DistinctType value, $Res Function(DistinctType) then) =
      _$DistinctTypeCopyWithImpl<$Res, DistinctType>;
  @useResult
  $Res call({String? type});
}

/// @nodoc
class _$DistinctTypeCopyWithImpl<$Res, $Val extends DistinctType>
    implements $DistinctTypeCopyWith<$Res> {
  _$DistinctTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistinctTypeImplCopyWith<$Res>
    implements $DistinctTypeCopyWith<$Res> {
  factory _$$DistinctTypeImplCopyWith(
          _$DistinctTypeImpl value, $Res Function(_$DistinctTypeImpl) then) =
      __$$DistinctTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type});
}

/// @nodoc
class __$$DistinctTypeImplCopyWithImpl<$Res>
    extends _$DistinctTypeCopyWithImpl<$Res, _$DistinctTypeImpl>
    implements _$$DistinctTypeImplCopyWith<$Res> {
  __$$DistinctTypeImplCopyWithImpl(
      _$DistinctTypeImpl _value, $Res Function(_$DistinctTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$DistinctTypeImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistinctTypeImpl implements _DistinctType {
  const _$DistinctTypeImpl({this.type});

  factory _$DistinctTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistinctTypeImplFromJson(json);

  @override
  final String? type;

  @override
  String toString() {
    return 'DistinctType(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistinctTypeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistinctTypeImplCopyWith<_$DistinctTypeImpl> get copyWith =>
      __$$DistinctTypeImplCopyWithImpl<_$DistinctTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistinctTypeImplToJson(
      this,
    );
  }
}

abstract class _DistinctType implements DistinctType {
  const factory _DistinctType({final String? type}) = _$DistinctTypeImpl;

  factory _DistinctType.fromJson(Map<String, dynamic> json) =
      _$DistinctTypeImpl.fromJson;

  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$DistinctTypeImplCopyWith<_$DistinctTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
