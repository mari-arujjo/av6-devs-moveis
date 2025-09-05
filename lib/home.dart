import 'package:av6devsmoveis/telacheia.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Frase do dia')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_)=>TelaCheiaPage()));
          },
          child: Hero(tag: 'bola-cristal', child: Icon(Icons.circle, size: 100, color: Colors.blueAccent)),
        ),
      )
    );
  }
}