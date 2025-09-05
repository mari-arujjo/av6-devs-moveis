import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TelaCheiaPage extends StatelessWidget {
  const TelaCheiaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CollectionReference frases =
      FirebaseFirestore.instance.collection('av6');
      
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Hero(
            tag: 'bola-cristal',
            child: FutureBuilder<DocumentSnapshot>(
              future: frases.doc('av6devsmoveis').get(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }
                if (!snapshot.hasData || !snapshot.data!.exists) {
                  return Text('Nenhuma frase encontrada');
                }
                final data = snapshot.data!.data() as Map<String, dynamic>;
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '"${data['texto']}"\n- ${data['autor']}',
                    style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}