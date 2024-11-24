import 'package:actividad_flutter_oscarluque/screens/drawer.dart';
import 'package:flutter/material.dart';

class Desafio extends StatelessWidget{
  const Desafio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Zona de Aterrizaje'),
        ),
        drawer: const MenuLateral(),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            //Margin desde la appBar
            margin: const EdgeInsets.only(top: 20), 
            decoration: BoxDecoration(
              //Hace que el contenedor sea circular
              shape: BoxShape.circle, 
              border: Border.all(
                color: const Color(0xFF141a35), 
                width: 10, 
              ),
            ),
            width: 280, 
            height: 600,
            alignment: Alignment.center,
            child: const Text(
              'H', 
              style: TextStyle(
                fontSize: 180, 
                color: Color(0xFF141a35),
              ),
            ),
          ),
        ),
    );
  }
}