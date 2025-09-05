import 'package:flutter/material.dart';

class BotaoGithubWidget extends StatefulWidget {
  final VoidCallback url;
  const BotaoGithubWidget({super.key, required this.url});

  @override
  State<BotaoGithubWidget> createState() => _BotaoGithubWidgetState();
}

class _BotaoGithubWidgetState extends State<BotaoGithubWidget> {

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: WidgetStatePropertyAll<Color>(const Color.fromARGB(255, 83, 62, 179)),
      ),
      onPressed: (widget.url),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.code, color: Colors.white),
          SizedBox(width: 8),
          Text('Acesse meu GitHub', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white)),
        ],
      ),
    );
  }
}
