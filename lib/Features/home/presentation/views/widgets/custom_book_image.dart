import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        //لا يوجد بها طول وعرض
        //aspectRatio حيث يتم تحديد حجم الصوره على اساس الطول العرض
        // الموجوده فيه
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget: (context, url, error) {
            return const Icon(Icons.error_outline_outlined);
          },
        ),
      ),
    );
  }
}
