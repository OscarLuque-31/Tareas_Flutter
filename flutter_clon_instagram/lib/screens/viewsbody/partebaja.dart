import 'package:flutter/material.dart';

Widget parteBaja(){

  final List<String> imgList = [
    'assets/foto1.jpg',
    'assets/foto2.jpg',
    'assets/foto3.jpg',
    'assets/foto4.jpg',
    'assets/foto5.jpg',
    'assets/foto6.jpg',
    'assets/foto7.jpg',
    'assets/foto8.jpg',
    'assets/foto9.jpg'
  ];

  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3, // Número de columnas
      crossAxisSpacing: 2.0, // Espaciado horizontal
      mainAxisSpacing: 2.0, // Espaciado vertical
    ),
    itemCount: imgList.length, // Cantidad de fotos
    itemBuilder: (context, index) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey), // Borde alrededor de las imágenes
        ),
        child: Image.asset(
          imgList[index], // Cargar imagen desde el asset
          fit: BoxFit.cover, // Ajuste de la imagen
        ),
      );
    },
  );
}


  