import 'package:flutter/material.dart';

class UserStats extends StatelessWidget {
  final int projects;
  final int followers;
  final int following;
  final double valueSize;
  final double labelSize;
  final double spacing;

  const UserStats(
      {super.key,
      required this.projects,
      required this.followers,
      required this.following,
      required this.valueSize,
      required this.labelSize,
      required this.spacing});

  Widget _buildStatistic(String label, int value) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: TextStyle(fontSize: valueSize, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: spacing * 0.3),
        Text(
          label,
          style: TextStyle(fontSize: labelSize),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildStatistic('Projects', projects),
        _buildStatistic('Followers', followers),
        _buildStatistic('Following', following)
      ],
    );
  }
}
