// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiErrorMessageImpl _$$ApiErrorMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiErrorMessageImpl(
      errorMessage: json['errorMessage'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ApiErrorMessageImplToJson(
        _$ApiErrorMessageImpl instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'statusCode': instance.statusCode,
    };
