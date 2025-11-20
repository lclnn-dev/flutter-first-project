import 'package:first_project/homework7/widgets/user_stats.dart';
import 'package:first_project/homework7/widgets/profile_header.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    final nameSize = isTablet ? 28.0 : 22.0;
    final descriptionSize = isTablet ? 20.0 : 16.0;
    final valueSize = isTablet ? 26.0 : 20.0;
    final labelSize = isTablet ? 18.0 : 14.0;

    final horizontalPadding = isTablet ? 32.0 : 16.0;
    final verticalSpacing = isTablet ? 24.0 : 16.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Column(
          children: [
            SizedBox(height: verticalSpacing),
            ProfileHeader(
                name: 'JIN',
                description: 'Worldwide Handsome',
                nameSize: nameSize,
                descriptionSize: descriptionSize,
                spacing: verticalSpacing),
            SizedBox(height: verticalSpacing),
            const Divider(),
            SizedBox(height: verticalSpacing),
            UserStats(
                projects: 77,
                followers: 777,
                following: 7,
                valueSize: valueSize,
                labelSize: labelSize,
                spacing: verticalSpacing),
          ],
        ),
      ),
    );
  }
}
