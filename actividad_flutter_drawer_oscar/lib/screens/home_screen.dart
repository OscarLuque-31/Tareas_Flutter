import 'package:actividad_flutter_oscarluque/screens/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarea 1 Flutter"),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Óscar Luque Hidalgo",
              style: textTheme.bodyLarge,
            ),
            const SizedBox(height: 30),
            Text(
              "Repositorio",
              style: textTheme.bodyMedium, 
            ),
            const SizedBox(height: 5),
            Text(
              "https://github.com/OscarLuque-31/Tarea1_Flutter.git",
              style: textTheme.bodySmall, 
            ),
          ],
        ),
      ),
    );
  }
}