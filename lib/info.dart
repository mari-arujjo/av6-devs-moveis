import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      appBar: AppBar(
        title: const Text(
          'Sobre o App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple.shade900,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Desenvolvido como parte da disciplina de Desenvolvimento de Aplicações Móveis na faculdade, aplicando conceitos de Flutter e Firebase',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
