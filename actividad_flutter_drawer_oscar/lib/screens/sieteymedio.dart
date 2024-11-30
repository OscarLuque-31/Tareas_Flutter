import 'package:flutter/material.dart';
import 'dart:math';

class SieteYMedio extends StatefulWidget {
  const SieteYMedio({super.key});

  @override
  State<SieteYMedio> createState() => _SieteYMedioState();
}

class _SieteYMedioState extends State<SieteYMedio> {
  double puntuacionMaquina = 0.0;
  double puntuacionJugador = 0.0;

  int vidasMaquina = 5;
  int vidasJugador = 5;

  Random random = Random();
  List<double> barajaCartas = [
    1.0,
    2.0,
    3.0,
    4.0,
    5.0,
    6.0,
    7.0,
    0.5,
    0.5,
    0.5
  ];

  List<double> barajaJugador = [];
  List<double> barajaMaquina = [];

  // Método para pedir una carta para el jugador
  void pedirCartaJugador() {
    if (puntuacionJugador < 7.5) {
      int indiceAleatorio = random.nextInt(barajaCartas.length);
      setState(() {
        barajaJugador.add(barajaCartas[indiceAleatorio]);
        contarPuntos();
      });

      if (puntuacionJugador > 7.5) {
        _mostrarDialogo("Te has pasado. Gana la máquina esta ronda.",
            puntuacionJugador, puntuacionMaquina);
        _actualizarVidas(jugadorPierde: true);
      }
    }
  }

  // Método para calcular los puntos de ambos jugadores
  void contarPuntos() {
    puntuacionJugador = 0;
    puntuacionMaquina = 0;

    for (double numero in barajaJugador) {
      puntuacionJugador += numero;
    }
    for (double numero in barajaMaquina) {
      puntuacionMaquina += numero;
    }
  }

  // Método para plantarse
  void plantarse() {
    // La máquina empieza a pedir cartas después de que el jugador se plante
    _jugadaMaquina();
  }

  // Método para que la máquina pida cartas lentamente
  void _jugadaMaquina() async {
    while (puntuacionMaquina < 7.5 && puntuacionMaquina <= puntuacionJugador) {
      await Future.delayed(const Duration(
          seconds: 1)); // Esperar 1 segundo antes de pedir una carta
      int indiceAleatorio = random.nextInt(barajaCartas.length);
      setState(() {
        barajaMaquina.add(barajaCartas[indiceAleatorio]);
        contarPuntos();
      });
    }

    //Después de que la máquina termine de pedir cartas, determinamos al ganador
    _detectarGanador();
  }

  // Método para determinar al ganador
  void _detectarGanador() {
    if (puntuacionMaquina > 7.5 || puntuacionJugador > puntuacionMaquina) {
      _mostrarDialogo(
          "¡Ganaste esta ronda!", puntuacionJugador, puntuacionMaquina);
      _actualizarVidas(maquinaPierde: true);
    } else if (puntuacionJugador < puntuacionMaquina) {
      _mostrarDialogo(
          "La máquina gana esta ronda.", puntuacionJugador, puntuacionMaquina);
      _actualizarVidas(jugadorPierde: true);
    } else {
      _mostrarDialogo("Empate.", puntuacionJugador, puntuacionMaquina);
    }
  }

  // Método para actualizar las vidas
  void _actualizarVidas(
      {bool jugadorPierde = false, bool maquinaPierde = false}) {
    setState(() {
      if (jugadorPierde) vidasJugador--;
      if (maquinaPierde) vidasMaquina--;
      if (vidasJugador == 0 || vidasMaquina == 0) _reiniciarJuego();
      barajaJugador.clear();
      barajaMaquina.clear();
      puntuacionJugador = 0.0;
      puntuacionMaquina = 0.0;
    });
  }

  // Mostrar un diálogo con el resultado
  void _mostrarDialogo(
      String mensaje, double puntosJugador, double puntosMaquina) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Resultado"),
        content: SizedBox(
          height: 80,
          child: Column(
            children: [
              Text(mensaje),
              Text("Tu puntuación: $puntosJugador"),
              Text("Puntuación de la máquina: $puntosMaquina")
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  // Reiniciar el juego si alguien pierde todas sus vidas
  void _reiniciarJuego() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("Juego Terminado"),
        content: Text(vidasJugador == 0
            ? "¡La máquina ganó el juego!"
            : "¡Ganaste el juego!"),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                vidasJugador = 5;
                vidasMaquina = 5;
                barajaJugador.clear();
                barajaMaquina.clear();
                puntuacionJugador = 0.0;
                puntuacionMaquina = 0.0;
              });
              Navigator.pop(context);
            },
            child: const Text("Reiniciar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Siete y Medio'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Tus vidas: $vidasJugador | Vidas de la máquina: $vidasMaquina",
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          Text(
            "Tu puntuación: $puntuacionJugador",
            style: const TextStyle(fontSize: 16),
          ),
          Text("Cartas: ${barajaJugador.join(", ")}"),
          const SizedBox(height: 20),
          Text(
            "Puntuación de la máquina: $puntuacionMaquina",
            style: const TextStyle(fontSize: 16),
          ),
          Text("Cartas de la máquina: ${barajaMaquina.join(", ")}"),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: pedirCartaJugador,
                child: const Text("Pedir Carta"),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: plantarse,
                child: const Text("Plantarse"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
