import 'package:flutter/material.dart';

class Enlace2 extends StatelessWidget {
  const Enlace2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imagenes en fila"),
        backgroundColor: const Color(0xFF141a35), // Color de fondo del Drawer
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromARGB(255, 189, 219, 252),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1497091071254-cc9b2ba7c48a?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dGVjbm9sb2clQzMlQURhJTIwb3NjdXJhfGVufDB8fDB8fHww',
              width: 100,
              height: 100,
            ),
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/005/585/649/non_2x/abstract-technology-background-hitech-communication-concept-dark-blue-background-vector.jpg',
              width: 100,
              height: 100,
            ),
            Image.network(
              'https://i.pinimg.com/736x/1e/b3/e3/1eb3e3974d5c63b9314c9731155813bb.jpg',
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
