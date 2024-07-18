import 'package:dartz/dartz.dart';
import 'package:wemolo_parking/core/utils/models/error/api_error_message.dart';

typedef ResultFuture<T> = Future<Either<ApiErrorMessage, T>>;

typedef ResultVoid = Future<Either<ApiErrorMessage, void>>;

typedef DataMap = Map<String, dynamic>;

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);