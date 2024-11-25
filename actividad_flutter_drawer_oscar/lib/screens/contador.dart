import 'package:actividad_flutter_oscarluque/screens/drawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contador',
      home: MiContador(),
    );
  }
}

class MiContador extends StatefulWidget {
  const MiContador({super.key});

  @override
  State<MiContador> createState() => _MiContadorState();
}

class _MiContadorState extends State<MiContador> {
  int numeroVeces = 0;

  void incrementar() {
    setState(() {
      numeroVeces++;
    });
  }

  void decrementar() {
    setState(() {
      numeroVeces--;
    });
  }

  void restablecer() {
    setState(() {
      numeroVeces = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Text(
          "Has pulsado $numeroVeces veces",
          style: const TextStyle(fontSize: 22),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0), // Añadido para un espaciado más cómodo
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: decrementar,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: const Icon(Icons.remove, size: 30),
            ),
            ElevatedButton(
              onPressed: incrementar,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: const Icon(Icons.add, size: 30),
            ),
            ElevatedButton(
              onPressed: restablecer,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: const Icon(Icons.restart_alt_outlined, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
