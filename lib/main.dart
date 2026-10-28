import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = ColorScheme.fromSeed(seedColor: Colors.teal);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StockFacile',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: scheme,
        appBarTheme: AppBarTheme(
          backgroundColor: scheme.primaryContainer, // vert d'eau clair
          foregroundColor: scheme.onPrimaryContainer, // texte foncé
        ),
      ),
      home: Scaffold(appBar: AppBar(title: const Text('StockFacile'))),
    );
  }
}
