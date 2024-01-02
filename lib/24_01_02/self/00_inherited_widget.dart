import 'package:flutter/material.dart';

void main() {
  runApp(const MyColor(
    color: Colors.red,
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'appName',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 26),
          bodyText2: TextStyle(fontSize: 14),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          child: Text(
            'Text with a background color',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}

class MyColor extends InheritedWidget {
  final Color color;

  const MyColor({
    super.key,
    required this.color,
    required Widget child,
  }) : super(child: child);

  static MyColor of(BuildContext context) {
    final MyColor? result =
        context.dependOnInheritedWidgetOfExactType<MyColor>();
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
