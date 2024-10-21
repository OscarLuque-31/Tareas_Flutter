import 'package:flutter/material.dart';
import 'package:flutter_clon_instagram/Screens/MenuLateral.dart';
import 'package:flutter_clon_instagram/screens/header.dart';
import 'package:flutter_clon_instagram/screens/footer.dart';
import 'package:flutter_clon_instagram/screens/body.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarea 2 Flutter',
      home: Scaffold(
        appBar: header(),
        endDrawer: const MenuLateral(), 
        body: body(),
        backgroundColor: Colors.white,       
        bottomNavigationBar: footer(),  
      ),
    );
  }
}
