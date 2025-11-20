import 'package:first_project/homework7/screens/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Homework7App());
}

class Homework7App extends StatelessWidget {
  const Homework7App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ProfileScreen(),
    );
  }
}
