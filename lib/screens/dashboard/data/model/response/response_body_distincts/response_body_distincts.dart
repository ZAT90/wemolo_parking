import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_body_distincts.freezed.dart';
part 'response_body_distincts.g.dart';

@freezed
class ResponseBodyDistincts with _$ResponseBodyDistincts {
    const factory ResponseBodyDistincts({
        DistinctData? data,
    }) = _ResponseBodyDistincts;

    factory ResponseBodyDistincts.fromJson(Map<String, dynamic> json) => _$ResponseBodyDistinctsFromJson(json);
}

@freezed
class DistinctData with _$DistinctData {
    const factory DistinctData({
        List<DistinctStatus>? distinctStatuses,
        List<DistinctType>? distinctTypes,
    }) = _DistinctData;

    factory DistinctData.fromJson(Map<String, dynamic> json) => _$DistinctDataFromJson(json);
}

@freezed
class DistinctStatus with _$DistinctStatus {
    const factory DistinctStatus({
        String? status,
    }) = _DistinctStatus;

    factory DistinctStatus.fromJson(Map<String, dynamic> json) => _$DistinctStatusFromJson(json);
}

@freezed
class DistinctType with _$DistinctType {
    const factory DistinctType({
        String? type,
    }) = _DistinctType;

    factory DistinctType.fromJson(Map<String, dynamic> json) => _$DistinctTypeFromJson(json);
}
