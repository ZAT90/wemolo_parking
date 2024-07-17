// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_body_distincts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBodyDistinctsImpl _$$ResponseBodyDistinctsImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseBodyDistinctsImpl(
      data: json['data'] == null
          ? null
          : DistinctData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseBodyDistinctsImplToJson(
        _$ResponseBodyDistinctsImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DistinctDataImpl _$$DistinctDataImplFromJson(Map<String, dynamic> json) =>
    _$DistinctDataImpl(
      distinctStatuses: (json['distinctStatuses'] as List<dynamic>?)
          ?.map((e) => DistinctStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      distinctTypes: (json['distinctTypes'] as List<dynamic>?)
          ?.map((e) => DistinctType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DistinctDataImplToJson(_$DistinctDataImpl instance) =>
    <String, dynamic>{
      'distinctStatuses': instance.distinctStatuses,
      'distinctTypes': instance.distinctTypes,
    };

_$DistinctStatusImpl _$$DistinctStatusImplFromJson(Map<String, dynamic> json) =>
    _$DistinctStatusImpl(
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$DistinctStatusImplToJson(
        _$DistinctStatusImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

_$DistinctTypeImpl _$$DistinctTypeImplFromJson(Map<String, dynamic> json) =>
    _$DistinctTypeImpl(
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$DistinctTypeImplToJson(_$DistinctTypeImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
