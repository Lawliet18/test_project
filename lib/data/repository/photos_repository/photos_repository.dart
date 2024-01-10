import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:test_app/data/api/api.dart';
import 'package:test_app/data/repository/base_repository.dart';
import 'package:test_app/data/repository/photos_repository/i_photos_repository.dart';
import 'package:test_app/data/repository/repository_error.dart';
import 'package:test_app/domain/api/photo.dart';

class PhotosRepository extends BaseRepository implements IPhotosRepository {
  final IUnsplashApi _api = GetIt.instance.get();

  @override
  Future<Either<RepositoryError, List<Photo>>> getPhotos() async {
    try {
      final response = await _api.getPhotos();

      final List<Photo> photos = (response.data as List)
          .map<Photo>((j) => Photo.fromJson(j as Map<String, dynamic>))
          .toList();

      return Right(photos);
    } catch (error, stackTrace) {
      return Left(
        handleError(
          location: '$runtimeType.getPhotos()',
          error: error,
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
