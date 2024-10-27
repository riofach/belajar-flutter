import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello"),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
