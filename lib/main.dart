import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatefulWidget {
  const MyApplication({super.key});

  @override
  State<MyApplication> createState() => _MyApplicationState();
}

class _MyApplicationState extends State<MyApplication> {
  int count = 100;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (count > 0) {
          count--;
        }
      });
      print('count: $count');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('build method is called');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar'),
          leading: const Icon(Icons.menu_open_sharp),
        ),
        body: Center(
            child: Text(
          '$count',
          style: TextStyle(
              fontSize: 35, color: count % 2 == 0 ? Colors.black : Colors.red),
        )),
      ),
    );
  }
}
