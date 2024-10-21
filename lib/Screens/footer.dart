import 'package:flutter/material.dart';

Widget footer() {
  return Container(
    color: const Color.fromARGB(255, 255, 255, 255),
    child: const SizedBox(
      height: 50.0,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home_outlined, color: Color.fromARGB(255, 0, 0, 0)), // Ícono de inicio
          Icon(Icons.search, color: Color.fromARGB(255, 0, 0, 0)), // Ícono de búsqueda
          Icon(Icons.add_box_outlined, color: Color.fromARGB(255, 0, 0, 0)), // Ícono de agregar
          Icon(Icons.favorite_border_outlined, color: Color.fromARGB(255, 0, 0, 0)), // Ícono de notificaciones
          Icon(Icons.person_2_outlined, color: Color.fromARGB(255, 0, 0, 0)), // Ícono de perfil
        ],
      ),
    ),
  );
}
