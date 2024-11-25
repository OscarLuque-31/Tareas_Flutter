import 'package:flutter/material.dart';
import 'routes/routes.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea 1 Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF141a35),
        scaffoldBackgroundColor: const Color.fromARGB(255, 189, 219, 252),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF141a35),
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: AppRoutes.home, 
      routes: AppRoutes.routes, 
    );
  }
}
