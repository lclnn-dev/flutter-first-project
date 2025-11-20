import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String description;
  final double nameSize;
  final double descriptionSize;
  final double spacing;

  const ProfileHeader(
      {super.key,
      required this.name,
      required this.description,
      required this.nameSize,
      required this.descriptionSize,
      required this.spacing});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(radius: 50),
        SizedBox(height: spacing),
        Text(
          name,
          style: TextStyle(fontSize: nameSize, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: spacing * 0.5),
        Text(
          description,
          style: TextStyle(fontSize: descriptionSize),
        ),
      ],
    );
  }
}
