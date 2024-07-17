import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_body_parking.freezed.dart';
part 'request_body_parking.g.dart';

@freezed
class RequestBodyParking with _$RequestBodyParking {
    const factory RequestBodyParking({
        String? query,
        Variables? variables,
    }) = _RequestBodyParking;

    factory RequestBodyParking.fromJson(Map<String, dynamic> json) => _$RequestBodyParkingFromJson(json);
}

@freezed
class Variables with _$Variables {
    const factory Variables({
        int? limit,
        int? offset,
    }) = _Variables;

    factory Variables.fromJson(Map<String, dynamic> json) => _$VariablesFromJson(json);
}
