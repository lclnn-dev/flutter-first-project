import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Контакти'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            contactItem('Андрій', '+380 50 111 11 11'),
            const SizedBox(height: 16),
            contactItem('Валерія', '+380 67 222 22 22'),
            const SizedBox(height: 16),
            contactItem('Олексій', '+380 63 333 33 33'),
          ],
        ),
      ),
    );
  }

  Widget contactItem(String name, String phone) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          phone,
          style: const TextStyle(
              fontSize: 18,
              color: Colors.blueGrey,
              fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
