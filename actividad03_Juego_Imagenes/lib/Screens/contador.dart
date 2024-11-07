import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Óscar Luque Hidalgo',
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
        title: const Center(child: Text("Óscar Luque Hidalgo")),
      ),
      body: Center(
        child: Text(
          "Has pulsado $numeroVeces veces",
          style: const TextStyle(fontSize: 22),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: decrementar,
            tooltip: 'Decrementar',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: incrementar,
            tooltip: 'Incrementar',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
              onPressed: restablecer,
              tooltip: 'Restablecer',
              child: const Icon(Icons.restart_alt_outlined))
        ],
      ),
    );
  }
}
