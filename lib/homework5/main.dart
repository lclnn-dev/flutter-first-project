import 'package:flutter/material.dart';

void main() {
  runApp(const Homework5App());
}

class Homework5App extends StatelessWidget {
  const Homework5App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Homework 5',
      home: MyHomePage(title: 'My Homework'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Container buildWidgetImageContainer(String urlImage) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.network(urlImage, width: 200, height: 200),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[50],
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Beautiful Images',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            buildWidgetImageContainer(
                'https://fastly.picsum.photos/id/179/2048/1365.jpg?hmac=GJyDjrvfBfjPfJPqSBd2pX6sjvsGbG10d21blr5bTS8'),
            const SizedBox(height: 20),
            buildWidgetImageContainer(
                'https://fastly.picsum.photos/id/200/1920/1280.jpg?hmac=-eKjMC8-UrbLMpy1A4OWrK0feVPB3Ka5KNOGibQzpRU'),
            const Text(
              'My text',
              style: TextStyle(
                  fontSize: 20, fontStyle: FontStyle.italic, color: Colors.red),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      color: Colors.green.withOpacity(0.2),
                      blurRadius: 50,
                      spreadRadius: 5),
                ],
              ),
              child: Image.asset('assets/images/fox.jpg',
                  width: 200, height: 200, fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
