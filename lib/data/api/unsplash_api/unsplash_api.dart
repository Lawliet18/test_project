import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_app/data/api/unsplash_api/i_unsplash_api.dart';

class UnsplashApi extends IUnsplashApi {
  UnsplashApi()
      : _dio = Dio(BaseOptions(baseUrl: _baseUrl))
          ..interceptors.addAll(_interceptors);
  static const String _baseUrl = 'https://api.unsplash.com';
  static const String _testApiToken =
      'ab3411e4ac868c2646c0ed488dfd919ef612b04c264f3374c97fff98ed253dc9';

  final Dio _dio;

  @override
  Future<Response<dynamic>> getPhotos() {
    return _dio.get('/photos');
  }

  static List<Interceptor> get _interceptors {
    return [
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.queryParameters['client_id'] = _testApiToken;
          handler.next(options);
        },
      ),
      PrettyDioLogger(),
    ];
  }
}
