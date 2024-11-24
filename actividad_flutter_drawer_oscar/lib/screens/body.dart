import 'package:flutter/material.dart';
import 'viewsbody/partearriba.dart';
import 'viewsbody/partebaja.dart';
import 'viewsbody/parteetiquetas.dart';
import 'viewsbody/partemedia.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  //Estado para controlar qué contenido mostrar en la parte baja
  bool showTags = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(child: parteArriba()), // Parte superior
          Container(
            child: parteMedia(
              onGridTap: () {
                setState(() {
                  showTags = false; // Mostrar las publicaciones
                });
              },
              onTaggedTap: () {
                setState(() {
                  showTags = true; // Mostrar las etiquetas
                });
              },
              isGridSelected: !showTags, 
              isTaggedSelected: showTags, 
            ),
          ),
          Expanded(
            child: showTags
                ? parteEtiquetas() // Mostrar etiquetas
                : parteBaja(), // Mostrar publicaciones
          ),
        ],
      ),
    );
  }
}
