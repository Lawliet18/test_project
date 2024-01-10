import 'package:dio/dio.dart';

abstract class IUnsplashApi {
  Future<Response<dynamic>> getPhotos();
}
