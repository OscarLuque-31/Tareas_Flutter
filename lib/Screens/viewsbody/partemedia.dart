import 'package:flutter/material.dart';

Widget parteMedia() {
  return SizedBox(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipOval(
              child: Image.asset(
                "assets/fotodeperfil.jpg",
                width: 60,
                height: 60,
              ),
            ),
            ClipOval(
              child: Image.asset(
                "assets/fotodeperfil.jpg",
                width: 60,
                height: 60,
              ),
            ),
            ClipOval(
              child: Image.asset(
                "assets/fotodeperfil.jpg",
                width: 60,
                height: 60,
              ),
            ),
            ClipOval(
              child: Image.asset(
                "assets/fotodeperfil.jpg",
                width: 60,
                height: 60,
              ),
            ),
            ClipOval(
              child: Image.asset(
                "assets/fotodeperfil.jpg",
                width: 60,
                height: 60,
              ),
            ),
          ],
        ),
      ],
    ))
    ;
}
