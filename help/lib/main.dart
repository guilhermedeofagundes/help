import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'anime',
      debugShowCheckedModeBanner: false, // remove "marca d'água"
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 140, 160), // fundo estilizado
      appBar: AppBar(
        title: const Text('Meu App'),
        backgroundColor: const Color.fromARGB(255, 163, 84, 236),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: null, // botão sem função (desativado)
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 20,
            ),
          ),
          child: const Text(
            'INICIAR',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}