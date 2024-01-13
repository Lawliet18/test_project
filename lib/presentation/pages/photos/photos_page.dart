import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/core/localization/generated/codegen_loader.g.dart';
import 'package:test_app/core/router/app_router.gr.dart';
import 'package:test_app/domain/api/photo.dart';
import 'package:test_app/presentation/blocs/photos/photos_bloc.dart';
import 'package:test_app/presentation/widgets/loader_widget.dart';

@RoutePage()
class PhotosPage extends StatefulWidget {
  const PhotosPage({super.key});

  @override
  State<PhotosPage> createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  Completer<void> _completer = Completer();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _onRefresh(context),
      child: BlocConsumer<PhotosBloc, PhotosState>(
        listener: _photosListener,
        builder: (context, state) {
          if (state.hasData) {
            final List<Photo> photos = state.photos!;

            return ListView.builder(
              itemCount: photos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () => _openPhoto(context, photos[index]),
                  leading: CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(
                      photos[index].urls.small,
                    ),
                  ),
                  title: Text(
                    photos[index].description ??
                        LocaleKeys.labelNoDescription.tr(context: context),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    LocaleKeys.labelAuthor.tr(args: [photos[index].user.name]),
                  ),
                );
              },
            );
          } else if (state is PhotosLoading) {
            return const LoaderWidget();
          } else if (state is PhotosError) {
            return Text(state.error.toString());
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }

  void _openPhoto(BuildContext context, Photo photo) =>
      context.router.push(PhotoRoute(photo: photo));

  Future<void> _onRefresh(BuildContext context) {
    context.read<PhotosBloc>().add(GetPhotosEvent());
    return _completer.future;
  }

  void _photosListener(BuildContext context, PhotosState state) {
    if (state is! PhotosLoading) {
      _completer.complete();
      _completer = Completer();
    }

    if (state is PhotosError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(state.error.toString())));
    }
  }
}
