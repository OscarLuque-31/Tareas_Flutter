import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // No olvides importar Google Fonts

class Enlace3 extends StatelessWidget {
  const Enlace3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Iconos"),
      ),
      body: Center(
        child: Column(  // Cambiar Row por Column para apilar en vertical
          mainAxisAlignment: MainAxisAlignment.center, // Centrar verticalmente
          children: [
            Text(
              "Iconos",
              style: GoogleFonts.openSans(fontSize: 20, color: Colors.black),
            ),
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
            ),
          ],
        ),
      ),
    );
  }
}
