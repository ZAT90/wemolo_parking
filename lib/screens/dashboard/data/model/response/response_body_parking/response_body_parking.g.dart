// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_body_parking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBodyParkingImpl _$$ResponseBodyParkingImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseBodyParkingImpl(
      data: json['data'] == null
          ? null
          : ParkingData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseBodyParkingImplToJson(
        _$ResponseBodyParkingImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ParkingDataImpl _$$ParkingDataImplFromJson(Map<String, dynamic> json) =>
    _$ParkingDataImpl(
      getAllParkingLots: (json['getAllParkingLots'] as List<dynamic>?)
          ?.map((e) => GetAllParkingLot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ParkingDataImplToJson(_$ParkingDataImpl instance) =>
    <String, dynamic>{
      'getAllParkingLots': instance.getAllParkingLots,
    };

_$GetAllParkingLotImpl _$$GetAllParkingLotImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllParkingLotImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      status: json['status'] as String?,
      liveDate: json['liveDate'] == null
          ? null
          : DateTime.parse(json['liveDate'] as String),
      type: json['type'] as String?,
      size: (json['size'] as num?)?.toInt(),
      image: json['image'] as String?,
      isLiked: json['isLiked'] as bool?,
    );

Map<String, dynamic> _$$GetAllParkingLotImplToJson(
        _$GetAllParkingLotImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'status': instance.status,
      'liveDate': instance.liveDate?.toIso8601String(),
      'type': instance.type,
      'size': instance.size,
      'image': instance.image,
      'isLiked': instance.isLiked,
    };
