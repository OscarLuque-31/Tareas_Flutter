import 'package:flutter/material.dart';
import 'enlace1.dart';
import 'enlace2.dart';
import 'enlace3.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF141a35), // Color de fondo del Drawer
      child: ListView(
        padding: EdgeInsets.zero, // Elimina el padding por defecto
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
          ListTile(
            leading: const Icon(Icons.grid_view,
                color: Colors.white), // Icono para imágenes en columna
            title: const Text(
              "Imágenes en columna",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace1(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.view_list,
                color: Colors.white), // Icono para imágenes en fila
            title: const Text(
              "Imágenes en fila",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace2(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo,
                color: Colors.white), // Icono para iconos
            title: const Text(
              "Iconos",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace3(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
