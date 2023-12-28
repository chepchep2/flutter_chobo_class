import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SeoulTimeApp(),
    );
  }
}

class SeoulTimeApp extends StatefulWidget {
  const SeoulTimeApp({super.key});

  @override
  State<SeoulTimeApp> createState() => _SeoulTimeAppState();
}

class _SeoulTimeAppState extends State<SeoulTimeApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
