import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String imageUrl;
  final double size;

  const AvatarWidget({
    Key? key,
    required this.imageUrl,
    this.size = 40.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      backgroundImage: NetworkImage(imageUrl),
      child: imageUrl.isEmpty
          ? Icon(
              Icons.person,
              size: size / 2,
              color: Colors.grey,
            )
          : null,
    );
  }
}