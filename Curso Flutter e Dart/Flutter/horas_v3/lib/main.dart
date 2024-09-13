import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  double largura = 100;
  double altura = 100;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.red,
              width: largura,
              height: altura,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.blue,
              width: largura,
              height: altura,
            ),
            Container(
              color: Colors.yellow,
              width: largura,
              height: altura,
            )
          ],
        ),
      ),
    );
  }
}
