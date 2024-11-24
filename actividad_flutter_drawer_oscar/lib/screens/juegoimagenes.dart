import 'dart:async';
import 'dart:math';
import 'package:actividad_flutter_oscarluque/screens/drawer.dart';
import 'package:flutter/material.dart';

class JuegoImagenes extends StatefulWidget {
  const JuegoImagenes({super.key});

  @override
  State<JuegoImagenes> createState() => _JuegoImagenesState();
}

class _JuegoImagenesState extends State<JuegoImagenes> {
  int puntuacion = 0;
  late Timer temporizador;
  final List<String> rutasImagenes = [
    'assets/fotojuego1.png',
    'assets/fotojuego2.jpg',
    'assets/fotojuego3.png',
    'assets/fotojuego4.jpg',
    'assets/fotojuego5.jpg',
    'assets/fotojuego6.jpg',
  ];
  String imagenActual = '';
  int tiempoMostrar = 2000;
  bool imagenVisible = false;
  bool juegoIniciado = false;
  String comnetario = "";

  String _hacerComentario() {
    if (puntuacion > 20) {
      return "¡Excelente trabajo!";
    } else if (puntuacion > 10) {
      return "¡Sigue así!";
    } else if (puntuacion > 0) {
      return "¡Puedes mejorar!";
    } else {
      return "¡Vamos, tú puedes!";
    }
  }

  void _iniciarJuego() {
    setState(() {
      puntuacion = 0;
      juegoIniciado = true;
      _mostrarImagenAleatoria();
    });
  }

  void _mostrarImagenAleatoria() {
    setState(() {
      imagenActual = (rutasImagenes..shuffle()).first;
      imagenVisible = true;
    });
    temporizador = Timer(Duration(milliseconds: tiempoMostrar), _imagenPerdida);
  }

  void _imagenClicada() {
    setState(() {
      puntuacion++;
      imagenVisible = false;
      temporizador.cancel();
    });
    _mostrarImagenAleatoria();
  }

  void _imagenPerdida() {
    setState(() {
      puntuacion -= 2;
      imagenVisible = false;
    });
    _mostrarImagenAleatoria();
  }

  void _reiniciarJuego() {
    setState(() {
      puntuacion = 0;
      imagenVisible = false;
      juegoIniciado = false;
      temporizador.cancel();
    });
  }

  @override
  void dispose() {
    temporizador.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Obtener el tamaño de la pantalla
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    //Altura de los botones en la parte inferior
    double buttonAreaHeight = 150;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Juego de Click en Imagen'),
        automaticallyImplyLeading: true,
      ),
      drawer: const MenuLateral(),
      body: Stack(
        children: [
          //Texto de puntuación en la parte superior
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              'Puntuación: $puntuacion',
              style: const TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
          //Imagen aleatoria que se mueve por la pantalla
          if (juegoIniciado && imagenVisible)
            Positioned(
              left: Random().nextDouble() * (screenWidth - 100),
              top: Random().nextDouble() *
                  (screenHeight - buttonAreaHeight - 100),
              child: GestureDetector(
                onTap: _imagenClicada,
                child: ClipOval(
                  child: Image.asset(
                    imagenActual,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize
                    .min,
                children: [
                  // Comentario encima de los botones
                  if (juegoIniciado)
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 8.0),
                      child: Text(
                        _hacerComentario(),
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  // Botones de acción
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: juegoIniciado ? null : _iniciarJuego,
                        child: const Text('Iniciar'),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: juegoIniciado ? _reiniciarJuego : null,
                        child: const Text('Reiniciar'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
