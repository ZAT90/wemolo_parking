import 'package:freezed_annotation/freezed_annotation.dart';
part 'network_response.freezed.dart';

@freezed
class NetworkResponse<Model> with _$NetworkResponse {
  const factory NetworkResponse.ok(Model data) = Ok;
  const factory NetworkResponse.invalidParameters(String message) =
      InvalidParameters;
  const factory NetworkResponse.noAuth(String message, int statusCode) =
      NoAuth; //401
  const factory NetworkResponse.noAccess(String message, int statusCode) =
      NoAccess; //403
  const factory NetworkResponse.badRequest(String message, int statusCode) =
      BadRequest; //400
  const factory NetworkResponse.notFound(String message, int statusCode) =
      NotFound; //404
  const factory NetworkResponse.conflict(String message, int statusCode) =
      Conflict; //409
  const factory NetworkResponse.noData(String message, int statusCode) =
      NoData; //500
  const factory NetworkResponse.noInternet(String message, int statusCode) =
      NoInternet;
}
