import 'package:av6devsmoveis/info.dart';
import 'package:av6devsmoveis/telacheia.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      appBar: AppBar(
        title: const Text(
          '🔮 Oraculum',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple.shade900,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const InfoPage()));
            }, 
            icon: Icon(Icons.info, color: Colors.white,),)
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const TelaCheiaPage()),
            );
          },
          child: Hero(
            tag: 'bola-cristal',
            child: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Colors.white.withValues(alpha: 0.9),
                    Colors.blueAccent.shade200,
                    Colors.deepPurple.shade400,
                  ],
                  center: const Alignment(-0.3, -0.3),
                  radius: 0.9,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent.withValues(alpha: 0.6),
                    blurRadius: 30,
                    spreadRadius: 8,
                  ),
                ],
              ),
              child: Center(
                child: Icon(
                  Icons.auto_awesome,
                  size: 60,
                  color: Colors.white.withValues(alpha: 0.9),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
