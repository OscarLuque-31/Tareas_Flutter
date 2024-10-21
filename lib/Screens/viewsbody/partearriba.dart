import 'package:flutter/material.dart';

Widget parteArriba() {
  return Padding(
    padding:
        const EdgeInsets.only(top: 10), // Cambia el valor según tus necesidades
    child: SizedBox(
      height: 220,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/fotodeperfil.jpg",
                      width: 80,
                      height: 80,
                    ),
                  ),
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "8",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("publicaciones"),
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "450",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("seguidores"),
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "582",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("seguidos"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Usamos Expanded para que ocupe todo el ancho disponible
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "   📍 Málaga",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "   🖥️ DAM",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(365, 30),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black, 
                    side: const BorderSide(
                      color: Color.fromARGB(255, 228, 228, 228), 
                      width: 2.0, 
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    'Editar perfil',
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
