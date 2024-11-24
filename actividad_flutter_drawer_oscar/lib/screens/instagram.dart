import 'package:flutter/material.dart';
import '/screens/body.dart';
import '/screens/footer.dart';
import '/screens/drawer.dart';

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('oscarluquee_05'), 
      ),
      drawer: const MenuLateral(), 
      body: const Body(), 
      backgroundColor: Colors.white,
      bottomNavigationBar: footer(),
    );
  }
}
