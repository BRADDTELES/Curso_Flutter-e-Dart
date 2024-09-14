import 'package:flutter/material.dart';

class MyPageApp extends StatelessWidget {
  const MyPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Olá Mundo!!!",
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
