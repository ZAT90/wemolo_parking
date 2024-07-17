import 'package:wemolo_parking/core/network/models/network_response.dart';
import 'package:wemolo_parking/core/utils/error/api_error_message.dart';
// bool isNullOrEmpty(dynamic value) {
//   if (value == null) {
//     return true;
//   }
//   if (value is String) {
//     return value.isEmpty;
//   }
//   if (value is List || value is Map || value is Set) {
//     return value.isEmpty;
//   }
//   return false;
// }

// extension NullableObjectExtensions on Object? {
//   bool get isNullOrEmpty {
//     if (this == null) return true;
//     if (this is String) return (this as String).isEmpty;
//     if (this is Iterable) return (this as Iterable).isEmpty;
//     if (this is Map) return (this as Map).isEmpty;
//     return false;
//   }
// }

// bool isNotNullOrEmpty(dynamic o) =>
//   o != null || "" != o;
extension StringExtensions on String { 
  String capitalize() { 
    return "${this[0].toUpperCase()}${this.substring(1)}"; 
  } 
} 

Future<dynamic> handleNetworkResponse<T>(NetworkResponse response) async {
  return response.maybeWhen(
    ok: (data) => data,
    orElse: () => throw const ApiErrorMessage(errorMessage: 'api error'),
    badRequest: (message) =>
        throw ApiErrorMessage(errorMessage: 'api error: $message'),
    noData: (message) =>
        throw ApiErrorMessage(errorMessage: 'api error: $message'),
    notFound: (message) =>
        throw ApiErrorMessage(errorMessage: 'api error: $message'),
    conflict: (message) =>
        throw ApiErrorMessage(errorMessage: 'api error: $message'),
    invalidParameters: (message) =>
        throw ApiErrorMessage(errorMessage: 'api error: $message'),
    noAccess: (message) =>
        throw ApiErrorMessage(errorMessage: 'api error: $message'),
    noAuth: (message) =>
        throw ApiErrorMessage(errorMessage: 'api error: $message'),
  );
}
