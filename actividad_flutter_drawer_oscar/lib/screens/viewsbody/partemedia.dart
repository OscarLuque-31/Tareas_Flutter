import 'package:flutter/material.dart';

Widget parteMedia({
  required VoidCallback onGridTap,
  required VoidCallback onTaggedTap,
  required bool isGridSelected, 
  required bool isTaggedSelected,
}) {
  return SizedBox(
    child: Column(
      children: [
        // Scroll horizontal para las imágenes destacadas
        SizedBox(
          height: 100, // Altura del área del scroll
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Scroll horizontal
            child: Row(
              children: [
                const SizedBox(width: 10), // Margen inicial
                _buildHighlightedStory('assets/foto1destacada.jpg', 'me'),
                const SizedBox(width: 15), // Espaciado entre imágenes
                _buildHighlightedStory('assets/foto2destacada.jpeg', 'gym'),
                const SizedBox(width: 15),
                _buildHighlightedStory('assets/foto3destacada.jpg', 'friends'),
                const SizedBox(width: 15),
                _buildHighlightedStory('assets/foto4destacada.jpg', '❤️'),
                const SizedBox(width: 15),
                _buildHighlightedStory('assets/jhonpork.jpg', 'Jhon Pork'),
                const SizedBox(width: 15),
                _buildHighlightedStory('assets/destacada_mas.png', 'Nuevo'),
                const SizedBox(width: 10), // Margen final
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),

        // Íconos en la parte inferior con funcionalidad
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Publicaciones
            GestureDetector(
              onTap: onGridTap,
              child: Container(
                decoration: BoxDecoration(
                  border: isGridSelected
                      ? const Border(bottom: BorderSide(color: Colors.black, width: 2))  // Borde negro si está seleccionado
                      : null,
                ),
                child: const Column(
                  children: [
                    Icon(Icons.grid_on_sharp, size: 30),
                  ],
                ),
              ),
            ),
            // Etiquetas
            GestureDetector(
              onTap: onTaggedTap,
              child: Container(
                decoration: BoxDecoration(
                  border: isTaggedSelected
                      ?  const Border(bottom: BorderSide(color: Colors.black, width: 2))  // Borde negro si está seleccionado
                      : null,
                ),
                child: const Column(
                  children: [
                    Icon(Icons.assignment_ind_outlined, size: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
      ],
    ),
  );
}

/// Widget helper para construir cada historia destacada
Widget _buildHighlightedStory(String imagePath, String label) {
  return Column(
    children: [
      Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        child: ClipOval(
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(height: 5), // Espaciado con el texto
      Text(label, style: const TextStyle(fontSize: 12)),
    ],
  );
}
