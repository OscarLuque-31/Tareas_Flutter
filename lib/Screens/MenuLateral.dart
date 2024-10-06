import 'package:flutter/material.dart';
import 'enlace1.dart';
import 'enlace2.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Óscar Luque"),
            accountEmail: Text("oluqhid3101@g.educaand.es"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/vector-gratis/fondo-negro-degradado-texturas-doradas_23-2149154119.jpg"),
                    fit: BoxFit.cover)),
          ),
          Ink(
            color: const Color.fromARGB(255, 0, 0, 0),
            child: ListTile(
              title: const Text(
                "Imágenes en columna",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Enlace1()));
              },
            ),
          ),
          ListTile(
            title: const Text(
              "Imagenes en fila",
              style: TextStyle(color: Colors.black),),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Enlace2()));
            },
          ),
        ],
      ),
    );
  }
}
