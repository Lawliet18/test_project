import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_app/domain/api/photo.dart';
import 'package:test_app/presentation/widgets/loader_widget.dart';

@RoutePage()
class PhotoPage extends StatelessWidget {
  const PhotoPage({
    required this.photo,
    super.key,
  });
  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(photo.user.name),
        centerTitle: true,
        backgroundColor: Colors.grey.withOpacity(.3),
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: SizedBox.expand(
        child: InteractiveViewer(
          child: CachedNetworkImage(
            imageUrl: photo.urls.full,
            placeholder: (context, url) {
              return const LoaderWidget();
            },
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
