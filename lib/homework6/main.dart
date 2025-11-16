import 'package:first_project/homework6/screens/contacts_screen.dart';
import 'package:first_project/homework6/screens/home_screen.dart';
import 'package:first_project/homework6/screens/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Homework6App());
}

class Homework6App extends StatelessWidget {
  const Homework6App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/contacts': (context) => const ContactsScreen(),
      },
    );
  }
}
