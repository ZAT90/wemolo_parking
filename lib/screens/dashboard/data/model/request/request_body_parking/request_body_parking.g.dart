// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_body_parking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestBodyParkingImpl _$$RequestBodyParkingImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestBodyParkingImpl(
      query: json['query'] as String?,
      variables: json['variables'] == null
          ? null
          : Variables.fromJson(json['variables'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RequestBodyParkingImplToJson(
        _$RequestBodyParkingImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'variables': instance.variables,
    };

_$VariablesImpl _$$VariablesImplFromJson(Map<String, dynamic> json) =>
    _$VariablesImpl(
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VariablesImplToJson(_$VariablesImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
    };
