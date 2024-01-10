import 'package:dartz/dartz.dart';
import 'package:test_app/data/repository/repository_error.dart';
import 'package:test_app/domain/api/photo.dart';

abstract class IPhotosRepository {
  Future<Either<RepositoryError, List<Photo>>> getPhotos();
}
