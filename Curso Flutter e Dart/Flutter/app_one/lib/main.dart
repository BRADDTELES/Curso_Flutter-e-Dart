import 'package:flutter/material.dart';

void main() {
  /* o void main() é o ponto de partida do Dart */
  runApp(const MyApp()); // rumApp é o ponto de partida do Flutter
}

/** Tipos de widget
 * StatefulWidget <- widget com estado
 * StatelessWidget <- widget sem estado
 * InheritedWidget
 */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(" texto aqui antes Olá, mundo",
        textDirection: TextDirection.ltr);
  }
}
