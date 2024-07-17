import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_body_distincts.freezed.dart';
part 'request_body_distincts.g.dart';

@freezed
class RequestBodyDisticts with _$RequestBodyDisticts {
    const factory RequestBodyDisticts({
        String? query,
    }) = _RequestBodyDisticts;

    factory RequestBodyDisticts.fromJson(Map<String, dynamic> json) => _$RequestBodyDistictsFromJson(json);
}
