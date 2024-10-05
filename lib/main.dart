import 'package:flutter/material.dart';
import 'Screens/MenuLateral.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea 1 Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tarea 1 Flutter"),
        ),
        drawer: const MenuLateral(),
        body: Center(
          child: Column(  //Column para apilar los textos
            mainAxisAlignment: MainAxisAlignment.center, //Centra el contenido verticalmente
            children: [
              Text(
                "Óscar Luque Hidalgo",
                style: GoogleFonts.lobster(fontSize: 24, color: const Color.fromARGB(255, 0, 0, 0)),
              ),
              const SizedBox(height: 8), //Espacio entre los textos
              Text(
                "Repositorio",
                style: GoogleFonts.openSans(fontSize: 20, color: const Color.fromARGB(255, 100, 100, 100)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
