import 'package:flutter/material.dart';
import 'package:flutter_chobo_class/24_01_02/00_counter.dart';

class CounterNextScreen extends StatefulWidget {
  const CounterNextScreen({super.key});

  @override
  State<CounterNextScreen> createState() => _CounterNextScreenState();
}

class _CounterNextScreenState extends State<CounterNextScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = CounterProvider.of(context).counter;

    return Scaffold(
      appBar: AppBar(
        title: const Text('next level'),
      ),
      body: Center(
        child: Text(
          '${viewModel.count}',
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          viewModel.increment();
        });
      }),
    );
  }
}
