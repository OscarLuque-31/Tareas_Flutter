import 'package:flutter/material.dart';

Widget parteEtiquetas() {
  // Lista de las imágenes etiquetadas
  final List<String> taggedImgList = [
    'assets/jhonpork.jpg',
    'assets/rizzler.png',
    'assets/skibiditoilet.jpg',
    'assets/eviljonkler.jpg',
  ];

  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3, // Número de columnas
      crossAxisSpacing: 2.0, // Espaciado horizontal
      mainAxisSpacing: 2.0, // Espaciado vertical
    ),
    itemCount: taggedImgList.length,
    itemBuilder: (context, index) {
      return SizedBox(
        child: Image.asset(
          taggedImgList[index],
          fit: BoxFit.cover,
        ),
      );
    },
  );
}
