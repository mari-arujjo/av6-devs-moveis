import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TelaCheiaPage extends StatelessWidget {
  const TelaCheiaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CollectionReference frases =
        FirebaseFirestore.instance.collection('av6');

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple.shade900,
              Colors.indigo.shade800,
              Colors.blue.shade700,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Hero(
              tag: 'bola-cristal',
              child: FutureBuilder<DocumentSnapshot>(
                future: frases.doc('av6devsmoveis').get(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator(
                      color: Colors.white,
                    );
                  }
                  if (!snapshot.hasData || !snapshot.data!.exists) {
                    return const Text(
                      'Nenhuma frase encontrada',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    );
                  }

                  final data = snapshot.data!.data() as Map<String, dynamic>;

                  return Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.auto_awesome,
                          size: 60,
                          color: Colors.white.withValues(alpha: 0.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          '"${data['texto']}"',
                          style: const TextStyle(
                            fontSize: 28,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Georgia',
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "- ${data['autor']}",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[100],
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
