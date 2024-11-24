import 'screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea 1 Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF141a35),
        scaffoldBackgroundColor: const Color.fromARGB(255, 189, 219, 252),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF141a35),
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/', // Página inicial
      routes: {
        '/': (context) => const HomePage(),
        '/enlace1': (context) => const Enlace1(),
        '/enlace2': (context) => const Enlace2(),
        '/enlace3': (context) => const Enlace3(),
        '/desafio': (context) => const Desafio(),
        '/piramide': (context) => const Piramide(),
        '/contador': (context) => const MiContador(),
        '/instagram': (context) => const Instagram(),
        '/juegoimagenes': (context) => const JuegoImagenes(),
      },
    );
  }
}
