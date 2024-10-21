import 'package:flutter/material.dart';

Widget parteMedia() {
  return SizedBox(
    child: Column(
      children: [
        SizedBox(
          width: 385,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(children: [
                Container(
                  width: 65, // Tamaño del contenedor (incluye el borde)
                  height: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black, // Color del borde
                      width: 1.0, // Grosor del borde
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/foto1destacada.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text("me")
              ]),
              Column(children: [
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
                      "assets/foto2destacada.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text("gym")
              ]),
              Column(children: [
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
                      "assets/foto3destacada.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text("friends")
              ]),
              Column(children: [
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
                      "assets/foto4destacada.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text("❤️")
              ]),
              Column(children: [
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
                      "assets/destacada_mas.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text("Nuevo")
              ]),
            ],
          ),
        ),
        const SizedBox(height: 15),
        const SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(children: [
                Icon(
                  Icons.grid_on_sharp,
                  size: 30,
                )
              ]),
              Column(
                children: [
                  Icon(
                    Icons.assignment_ind_outlined,
                    size: 30,
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 15),
      ],
    ),
  );
}
