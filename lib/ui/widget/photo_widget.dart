import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/model/photo.dart';

class PhotoWidget extends StatelessWidget {
  final Photo photo;

  const PhotoWidget({
    super.key,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              photo.previewURL),
        ),
      ),
    );
  }
}
