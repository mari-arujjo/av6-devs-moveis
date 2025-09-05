import 'package:av6devsmoveis/botao.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

    final String githubUrl = 'https://github.com/mari-arujjo';
  void _launchURL() async {
    final Uri url = Uri.parse(githubUrl);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Não foi possível abrir $githubUrl';
    }
  }

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
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Este projeto foi desenvolvido como atividade da disciplina de Desenvolvimento para Dispositivos Móveis.', style: TextStyle(fontSize: 16, color: Colors.white)),
            SizedBox(height: 20),
            Text('Mariana Araújo', style: TextStyle(fontSize: 16, color: Colors.white)),
            SizedBox(height: 3),
            Text('TSI - 20242158060025', style: TextStyle(fontSize: 16, color: Colors.white)),
            BotaoGithubWidget(url:(){_launchURL();}),
          ],
        ),
      ),
    );
  }
}