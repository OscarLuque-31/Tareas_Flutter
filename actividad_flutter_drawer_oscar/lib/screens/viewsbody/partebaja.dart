import 'package:flutter/material.dart';

Widget parteBaja(){

  //Lista de las imágenes a utilizar
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
      crossAxisCount: 3, //Número de columnas
      crossAxisSpacing: 2.0, //Espaciado horizontal
      mainAxisSpacing: 2.0, //Espaciado vertical
    ),
    itemCount: imgList.length,
    itemBuilder: (context, index) {
      return SizedBox(
        child: Image.asset(
          imgList[index], 
          fit: BoxFit.cover, 
        ),
      );
    },
  );
}


  