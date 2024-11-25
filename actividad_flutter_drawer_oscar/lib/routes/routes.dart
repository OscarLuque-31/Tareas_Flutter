import 'package:flutter/material.dart';
import '../screens/screens.dart'; 

class AppRoutes {
  // Definir nombres para las rutas como constantes
  static const String home = '/';
  static const String enlace1 = '/enlace1';
  static const String enlace2 = '/enlace2';
  static const String enlace3 = '/enlace3';
  static const String desafio = '/desafio';
  static const String piramide = '/piramide';
  static const String contador = '/contador';
  static const String instagram = '/instagram';
  static const String juegoImagenes = '/juegoimagenes';

  // Mapa de rutas
  static final Map<String, WidgetBuilder> routes = {
    home: (context) => const HomePage(),
    enlace1: (context) => const Enlace1(),
    enlace2: (context) => const Enlace2(),
    enlace3: (context) => const Enlace3(),
    desafio: (context) => const Desafio(),
    piramide: (context) => const Piramide(),
    contador: (context) => const MiContador(),
    instagram: (context) => const Instagram(),
    juegoImagenes: (context) => const JuegoImagenes(),
  };
}
