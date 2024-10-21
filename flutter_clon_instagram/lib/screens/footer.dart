import 'package:flutter/material.dart';

Widget footer() {
  return Container(
    color: const Color.fromARGB(255, 255, 255, 255),
    child: SizedBox(
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(Icons.home_outlined, color: Color.fromARGB(255, 0, 0, 0)),
          const Icon(Icons.search, color: Color.fromARGB(255, 0, 0, 0)),
          const Icon(Icons.add_box_outlined,
              color: Color.fromARGB(255, 0, 0, 0)),
          const Icon(Icons.favorite_border_outlined,
              color: Color.fromARGB(255, 0, 0, 0)),
          ClipOval(
            child: Image.asset(
              "assets/fotodeperfil.jpg",
              width: 25,
              height: 25,
            ),
          ),
        ],
      ),
    ),
  );
}
