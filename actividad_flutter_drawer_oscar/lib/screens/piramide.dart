import 'package:actividad_flutter_oscarluque/screens/drawer.dart';
import 'package:flutter/material.dart';

class Piramide extends StatelessWidget {
  const Piramide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Piramide'),
      ),
      drawer: const MenuLateral(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0), // Margen general
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/jhonpork.jpg",
                      width: 70,
                      height: 70,
                    ),
                    const Text("Jhon Pork"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20), // Espacio entre filas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/hawktuah.jpg",
                      width: 70,
                      height: 70,
                    ),
                    const Text("Hawk Tuah"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/skibiditoilet.jpg",
                      width: 70,
                      height: 70,
                    ),
                    const Text("Skibidi Toilet"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20), // Espacio entre filas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/rizzler.png",
                      width: 70,
                      height: 70,
                    ),
                    const Text("The Rizzler"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/drippybruh.jpg",
                      width: 70,
                      height: 70,
                    ),
                    const Text("Drippy Bruh"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/eviljonkler.jpg",
                      width: 70,
                      height: 70,
                    ),
                    const Text("Evil Jonkler"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
