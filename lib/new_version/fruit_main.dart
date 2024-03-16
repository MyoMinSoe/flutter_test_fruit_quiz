import 'package:flutter/material.dart';
import 'package:quizz/new_version/widgets/fruit_main_body.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Fruit Quiz'),
        ),
        body: FruitMainBody(),
      ),
    );
  }
}
