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
          child: Column(
            //Column para apilar los textos
            mainAxisAlignment:
                MainAxisAlignment.center, //Centra el contenido verticalmente
            children: [
              Text(
                "Óscar Luque Hidalgo",
                style: GoogleFonts.abel(
                    fontSize: 24, color: const Color.fromARGB(255, 0, 0, 0)),
              ),
              const SizedBox(height: 30), //Espacio entre los textos
              Text(
                "Repositorio",
                style: GoogleFonts.openSans(
                    fontSize: 20,
                    color: Colors.black),
              ),
              const SizedBox(height: 5),
              Text(
                "https://github.com/OscarLuque-31/Tarea1_Flutter.git",
                style: GoogleFonts.openSans(fontSize: 13, color: Colors.red),
              ),
              const SizedBox(height: 30),
              Text(
                "Iconos",
                style: GoogleFonts.openSans(fontSize: 20,color: Colors.black),),
              const SizedBox(height: 5),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, size: 40, color: Colors.blue),
                  Icon(Icons.phone, size: 40, color: Colors.green),
                  Icon(Icons.email, size: 40, color: Colors.red),
                  Icon(Icons.access_alarm, size: 40, color: Colors.orange),
                  Icon(Icons.account_circle, size: 40, color: Colors.purple),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
