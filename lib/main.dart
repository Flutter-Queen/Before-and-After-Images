import 'package:flutter/material.dart';

import 'custom_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Before and After Images',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Before After Images'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: BeforeAfter(
                beforeImage: Image.asset('assets/images/eiffelafter.jpg'),
                afterImage: Image.asset('assets/images/eiffelbefore.jpg'),
              ),
            ),
            Expanded(
              flex: 1,
              child: BeforeAfter(
                beforeImage: Image.asset('assets/images/parrotafter.jpg'),
                afterImage: Image.asset('assets/images/parrotbefore.jpg'),
                isVertical: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
