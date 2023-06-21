import 'dart:async';

import 'package:flutter/material.dart';

/*
Task -1
Asynchronous function yozing. (darsdagi kabi)
*/

/*
void main() {
  print("Start");
  getData();
  print("End");
}

void getData() async{
  String data = await middleFunction();
  print(data);
}

Future<String> middleFunction(){
  return Future.delayed(Duration(seconds:5), ()=> "Hello World");
}

*/


/*
Future delayedPrint(int seconds, String text) {
  final duration = Duration(seconds: seconds);
  return Future.delayed(duration).then((value) => text);
}
main() async {
  print('Life');
  await delayedPrint(5, "Is").then((status){
    print(status);
  });
  print('Good');
}
*/

/*
Task - 2
Flutter project yarating. Unda ekranda counter ko’rsating. U app ga kirgandan
so’ng 10 sekunddan keyin ishlasin.
*/

/*
void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatefulWidget {
  const MyApplication({super.key});

  @override
  State<MyApplication> createState() => _MyApplicationState();
}

class _MyApplicationState extends State<MyApplication> {
  int count = 0;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 10), (timer) {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
          count++;
      });
      print('count: $count');
    });
    super.initState();
  });
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
                  fontSize: 35,),
            )),
      ),
    );
  }
}
*/


/*
Task-3
2-masaladagi app endi 100 dan boshlab pastga qarab sanasin. Faqat har 5 sekundda 1 ta ga kamaysin.
*/
/*
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
      Timer.periodic(const Duration(seconds: 5), (timer) {
        setState(() {
          if(count > 0){
            count--;
          }
        print('count: $count');
      });
      super.initState();
    });
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
                fontSize: 35,),
            )),
      ),
    );
  }
}
*/


/*
4 - masala
Yuqoridagi app ga shunday o’zgartirish kiritngki counter juft son bo’lsa text rangi qora,
toq bo’lsa qizil bo’lsin. Bunda ternary operatorydan foydalaning.
*/


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

