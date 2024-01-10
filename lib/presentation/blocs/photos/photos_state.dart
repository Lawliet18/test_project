part of 'photos_bloc.dart';

@immutable
abstract class PhotosState {
  const PhotosState(this.photos);
  final List<Photo>? photos;

  bool get hasData => photos != null;
}

class PhotosInitial extends PhotosState {
  const PhotosInitial() : super(null);
}

class PhotosLoading extends PhotosState {
  const PhotosLoading(super.photos);
}

class PhotosLoaded extends PhotosState {
  const PhotosLoaded(super.photos);
}

class PhotosError extends PhotosState {
  const PhotosError(super.photos, this.error);
  final dynamic error;
}
