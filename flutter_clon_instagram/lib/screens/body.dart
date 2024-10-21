import 'package:flutter/material.dart';
import 'package:flutter_clon_instagram/screens/viewsbody/partearriba.dart';
import 'package:flutter_clon_instagram/screens/viewsbody/partemedia.dart';
import 'package:flutter_clon_instagram/screens/viewsbody/partebaja.dart';

Widget body() {
  return Center(
      child: Column(
        children: [
          Container(child: parteArriba(),),
          Container(child: parteMedia(),),
          Expanded(child: parteBaja(),),
      ],
    )
  );
}
