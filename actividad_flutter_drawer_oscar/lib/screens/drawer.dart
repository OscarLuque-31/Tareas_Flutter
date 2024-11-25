import 'package:flutter/material.dart';
import '../routes/routes.dart'; // Importa la clase AppRoutes

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF141a35),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 189, 219, 252),
            ),
            child: Text(
              'Menú de Navegación',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                height: 9,
              ),
            ),
          ),
          // Entrada para la página de inicio
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white),
            title: const Text(
              "Inicio",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop(); // Cerrar Drawer
              Navigator.pushNamed(context, AppRoutes.home); // Usa la constante
            },
          ),
          // Entrada para Enlace1
          ListTile(
            leading: const Icon(Icons.grid_view, color: Colors.white),
            title: const Text(
              "Imágenes en columna",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.enlace1); // Usa la constante
            },
          ),
          // Entrada para Enlace2
          ListTile(
            leading: const Icon(Icons.view_list, color: Colors.white),
            title: const Text(
              "Imágenes en fila",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.enlace2);
            },
          ),
          // Entrada para Enlace3
          ListTile(
            leading: const Icon(Icons.photo, color: Colors.white),
            title: const Text(
              "Iconos",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.enlace3);
            },
          ),
          // Entrada para Desafío
          ListTile(
            leading: const Icon(Icons.emoji_events, color: Colors.white),
            title: const Text(
              "Desafío",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.desafio);
            },
          ),
          // Entrada para Pirámide
          ListTile(
            leading: const Icon(Icons.play_arrow, color: Colors.white),
            title: const Text(
              "Pirámide",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.piramide);
            },
          ),
          // Entrada para Contador
          ListTile(
            leading: const Icon(Icons.onetwothree_rounded, color: Colors.white),
            title: const Text(
              "Contador",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.contador);
            },
          ),
          // Entrada para Instagram
          ListTile(
            leading: const Icon(Icons.phone_android, color: Colors.white),
            title: const Text(
              "Instagram",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.instagram);
            },
          ),
          // Entrada para Juego Imágenes
          ListTile(
            leading: const Icon(Icons.gamepad_outlined, color: Colors.white),
            title: const Text(
              "Juego Imágenes",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, AppRoutes.juegoImagenes);
            },
          ),
        ],
      ),
    );
  }
}
