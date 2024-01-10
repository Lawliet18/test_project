import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:test_app/data/repository/photos_repository/i_photos_repository.dart';
import 'package:test_app/domain/api/photo.dart';

part 'photos_event.dart';
part 'photos_state.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  PhotosBloc() : super(const PhotosInitial()) {
    on<GetPhotosEvent>(_onGetPhotosEvent);

    add(GetPhotosEvent());
  }
  final IPhotosRepository _repository = GetIt.instance.get();

  FutureOr<void> _onGetPhotosEvent(
    GetPhotosEvent event,
    Emitter<PhotosState> emit,
  ) async {
    emit(PhotosLoading(state.photos));

    final response = await _repository.getPhotos();

    response.fold(
      (l) => emit(PhotosError(state.photos, l.error)),
      (r) => emit(PhotosLoaded(r)),
    );
  }
}
