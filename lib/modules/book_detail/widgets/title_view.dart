import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TitleView extends StatelessWidget {
  const TitleView({
    super.key,
    required this.cover,
    required this.title,
  });

  final String cover;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 30.0),
        ),
        Container(
          height: 70,
          width: 50,
          color: Colors.blue,
          child: CachedNetworkImage(
            height: 70,
            width: 50,
            imageUrl: cover,
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        )
      ],
    );
  }
}
