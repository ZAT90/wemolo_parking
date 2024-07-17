// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_body_parking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseBodyParking _$ResponseBodyParkingFromJson(Map<String, dynamic> json) {
  return _ResponseBodyParking.fromJson(json);
}

/// @nodoc
mixin _$ResponseBodyParking {
  ParkingData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBodyParkingCopyWith<ResponseBodyParking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBodyParkingCopyWith<$Res> {
  factory $ResponseBodyParkingCopyWith(
          ResponseBodyParking value, $Res Function(ResponseBodyParking) then) =
      _$ResponseBodyParkingCopyWithImpl<$Res, ResponseBodyParking>;
  @useResult
  $Res call({ParkingData? data});

  $ParkingDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseBodyParkingCopyWithImpl<$Res, $Val extends ResponseBodyParking>
    implements $ResponseBodyParkingCopyWith<$Res> {
  _$ResponseBodyParkingCopyWithImpl(this._value, this._then);

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
              as ParkingData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParkingDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ParkingDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseBodyParkingImplCopyWith<$Res>
    implements $ResponseBodyParkingCopyWith<$Res> {
  factory _$$ResponseBodyParkingImplCopyWith(_$ResponseBodyParkingImpl value,
          $Res Function(_$ResponseBodyParkingImpl) then) =
      __$$ResponseBodyParkingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ParkingData? data});

  @override
  $ParkingDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseBodyParkingImplCopyWithImpl<$Res>
    extends _$ResponseBodyParkingCopyWithImpl<$Res, _$ResponseBodyParkingImpl>
    implements _$$ResponseBodyParkingImplCopyWith<$Res> {
  __$$ResponseBodyParkingImplCopyWithImpl(_$ResponseBodyParkingImpl _value,
      $Res Function(_$ResponseBodyParkingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResponseBodyParkingImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ParkingData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBodyParkingImpl implements _ResponseBodyParking {
  const _$ResponseBodyParkingImpl({this.data});

  factory _$ResponseBodyParkingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseBodyParkingImplFromJson(json);

  @override
  final ParkingData? data;

  @override
  String toString() {
    return 'ResponseBodyParking(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBodyParkingImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseBodyParkingImplCopyWith<_$ResponseBodyParkingImpl> get copyWith =>
      __$$ResponseBodyParkingImplCopyWithImpl<_$ResponseBodyParkingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBodyParkingImplToJson(
      this,
    );
  }
}

abstract class _ResponseBodyParking implements ResponseBodyParking {
  const factory _ResponseBodyParking({final ParkingData? data}) =
      _$ResponseBodyParkingImpl;

  factory _ResponseBodyParking.fromJson(Map<String, dynamic> json) =
      _$ResponseBodyParkingImpl.fromJson;

  @override
  ParkingData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseBodyParkingImplCopyWith<_$ResponseBodyParkingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ParkingData _$ParkingDataFromJson(Map<String, dynamic> json) {
  return _ParkingData.fromJson(json);
}

/// @nodoc
mixin _$ParkingData {
  List<GetAllParkingLot>? get getAllParkingLots =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParkingDataCopyWith<ParkingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingDataCopyWith<$Res> {
  factory $ParkingDataCopyWith(
          ParkingData value, $Res Function(ParkingData) then) =
      _$ParkingDataCopyWithImpl<$Res, ParkingData>;
  @useResult
  $Res call({List<GetAllParkingLot>? getAllParkingLots});
}

/// @nodoc
class _$ParkingDataCopyWithImpl<$Res, $Val extends ParkingData>
    implements $ParkingDataCopyWith<$Res> {
  _$ParkingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAllParkingLots = freezed,
  }) {
    return _then(_value.copyWith(
      getAllParkingLots: freezed == getAllParkingLots
          ? _value.getAllParkingLots
          : getAllParkingLots // ignore: cast_nullable_to_non_nullable
              as List<GetAllParkingLot>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParkingDataImplCopyWith<$Res>
    implements $ParkingDataCopyWith<$Res> {
  factory _$$ParkingDataImplCopyWith(
          _$ParkingDataImpl value, $Res Function(_$ParkingDataImpl) then) =
      __$$ParkingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GetAllParkingLot>? getAllParkingLots});
}

/// @nodoc
class __$$ParkingDataImplCopyWithImpl<$Res>
    extends _$ParkingDataCopyWithImpl<$Res, _$ParkingDataImpl>
    implements _$$ParkingDataImplCopyWith<$Res> {
  __$$ParkingDataImplCopyWithImpl(
      _$ParkingDataImpl _value, $Res Function(_$ParkingDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAllParkingLots = freezed,
  }) {
    return _then(_$ParkingDataImpl(
      getAllParkingLots: freezed == getAllParkingLots
          ? _value._getAllParkingLots
          : getAllParkingLots // ignore: cast_nullable_to_non_nullable
              as List<GetAllParkingLot>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParkingDataImpl implements _ParkingData {
  const _$ParkingDataImpl({final List<GetAllParkingLot>? getAllParkingLots})
      : _getAllParkingLots = getAllParkingLots;

  factory _$ParkingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParkingDataImplFromJson(json);

  final List<GetAllParkingLot>? _getAllParkingLots;
  @override
  List<GetAllParkingLot>? get getAllParkingLots {
    final value = _getAllParkingLots;
    if (value == null) return null;
    if (_getAllParkingLots is EqualUnmodifiableListView)
      return _getAllParkingLots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ParkingData(getAllParkingLots: $getAllParkingLots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingDataImpl &&
            const DeepCollectionEquality()
                .equals(other._getAllParkingLots, _getAllParkingLots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_getAllParkingLots));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParkingDataImplCopyWith<_$ParkingDataImpl> get copyWith =>
      __$$ParkingDataImplCopyWithImpl<_$ParkingDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParkingDataImplToJson(
      this,
    );
  }
}

abstract class _ParkingData implements ParkingData {
  const factory _ParkingData(
      {final List<GetAllParkingLot>? getAllParkingLots}) = _$ParkingDataImpl;

  factory _ParkingData.fromJson(Map<String, dynamic> json) =
      _$ParkingDataImpl.fromJson;

  @override
  List<GetAllParkingLot>? get getAllParkingLots;
  @override
  @JsonKey(ignore: true)
  _$$ParkingDataImplCopyWith<_$ParkingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetAllParkingLot _$GetAllParkingLotFromJson(Map<String, dynamic> json) {
  return _GetAllParkingLot.fromJson(json);
}

/// @nodoc
mixin _$GetAllParkingLot {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get liveDate => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  bool? get isLiked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllParkingLotCopyWith<GetAllParkingLot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllParkingLotCopyWith<$Res> {
  factory $GetAllParkingLotCopyWith(
          GetAllParkingLot value, $Res Function(GetAllParkingLot) then) =
      _$GetAllParkingLotCopyWithImpl<$Res, GetAllParkingLot>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? address,
      String? status,
      DateTime? liveDate,
      String? type,
      int? size,
      String? image,
      bool? isLiked});
}

/// @nodoc
class _$GetAllParkingLotCopyWithImpl<$Res, $Val extends GetAllParkingLot>
    implements $GetAllParkingLotCopyWith<$Res> {
  _$GetAllParkingLotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? status = freezed,
    Object? liveDate = freezed,
    Object? type = freezed,
    Object? size = freezed,
    Object? image = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      liveDate: freezed == liveDate
          ? _value.liveDate
          : liveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllParkingLotImplCopyWith<$Res>
    implements $GetAllParkingLotCopyWith<$Res> {
  factory _$$GetAllParkingLotImplCopyWith(_$GetAllParkingLotImpl value,
          $Res Function(_$GetAllParkingLotImpl) then) =
      __$$GetAllParkingLotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? address,
      String? status,
      DateTime? liveDate,
      String? type,
      int? size,
      String? image,
      bool? isLiked});
}

/// @nodoc
class __$$GetAllParkingLotImplCopyWithImpl<$Res>
    extends _$GetAllParkingLotCopyWithImpl<$Res, _$GetAllParkingLotImpl>
    implements _$$GetAllParkingLotImplCopyWith<$Res> {
  __$$GetAllParkingLotImplCopyWithImpl(_$GetAllParkingLotImpl _value,
      $Res Function(_$GetAllParkingLotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? status = freezed,
    Object? liveDate = freezed,
    Object? type = freezed,
    Object? size = freezed,
    Object? image = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_$GetAllParkingLotImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      liveDate: freezed == liveDate
          ? _value.liveDate
          : liveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllParkingLotImpl implements _GetAllParkingLot {
  const _$GetAllParkingLotImpl(
      {this.id,
      this.name,
      this.address,
      this.status,
      this.liveDate,
      this.type,
      this.size,
      this.image,
      this.isLiked});

  factory _$GetAllParkingLotImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllParkingLotImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? status;
  @override
  final DateTime? liveDate;
  @override
  final String? type;
  @override
  final int? size;
  @override
  final String? image;
  @override
  final bool? isLiked;

  @override
  String toString() {
    return 'GetAllParkingLot(id: $id, name: $name, address: $address, status: $status, liveDate: $liveDate, type: $type, size: $size, image: $image, isLiked: $isLiked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllParkingLotImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.liveDate, liveDate) ||
                other.liveDate == liveDate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, status,
      liveDate, type, size, image, isLiked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllParkingLotImplCopyWith<_$GetAllParkingLotImpl> get copyWith =>
      __$$GetAllParkingLotImplCopyWithImpl<_$GetAllParkingLotImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllParkingLotImplToJson(
      this,
    );
  }
}

abstract class _GetAllParkingLot implements GetAllParkingLot {
  const factory _GetAllParkingLot(
      {final String? id,
      final String? name,
      final String? address,
      final String? status,
      final DateTime? liveDate,
      final String? type,
      final int? size,
      final String? image,
      final bool? isLiked}) = _$GetAllParkingLotImpl;

  factory _GetAllParkingLot.fromJson(Map<String, dynamic> json) =
      _$GetAllParkingLotImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get status;
  @override
  DateTime? get liveDate;
  @override
  String? get type;
  @override
  int? get size;
  @override
  String? get image;
  @override
  bool? get isLiked;
  @override
  @JsonKey(ignore: true)
  _$$GetAllParkingLotImplCopyWith<_$GetAllParkingLotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
