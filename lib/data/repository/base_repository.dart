import 'package:dio/dio.dart';
import 'package:test_app/core/logger/app_logger.dart';
import 'package:test_app/data/repository/repository_error.dart';
import 'package:test_app/domain/api/api_error.dart';

abstract class BaseRepository {
  RepositoryError handleError({
    required String location,
    required dynamic error,
    required StackTrace? stackTrace,
  }) {
    if (error is DioException) {
      return _handleDioError(
        error: error,
        stackTrace: stackTrace,
      );
    }

    AppLogger.instance.e(
      location,
      error: error,
      stackTrace: stackTrace,
    );

    return RepositoryError(error: error, stackTrace: stackTrace);
  }

  RepositoryError handleTypeError({
    required String location,
  }) {
    AppLogger.instance.e(location);

    return RepositoryError(error: 'Unkhown type error', stackTrace: null);
  }

  RepositoryError _handleDioError({
    required DioException error,
    required StackTrace? stackTrace,
  }) {
    if (error.response != null &&
        error.response!.data is Map<String, dynamic>) {
      final data = error.response!.data as Map<String, dynamic>;
      final apiError = ApiError.fromJson(data);

      return RepositoryError(error: apiError);
    }
    return RepositoryError(error: error, stackTrace: stackTrace);
  }
}
