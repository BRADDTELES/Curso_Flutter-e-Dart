import 'package:flutter/material.dart';

void main() {
  /* o void main() é o ponto de partida do Dart */
  runApp(Text(" texto aqui antes Olá, mundo",
      textDirection:
          TextDirection.ltr)); // rumApp é o ponto de partida do Flutter
}

/** Tipos de widget
 * StatefulWidget <- widget com estado
 * StatelessWidget <- widget sem estado
 * InheritedWidget
 */
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
