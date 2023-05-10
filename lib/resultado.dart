import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  Resultado({
    Key? key,
    required this.pontuacao,
    required this.reinicializar,
  }) : super(key: key);

  final int pontuacao;
  final void Function() reinicializar;

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante';
    } else {
      return 'Excelente!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            fraseResultado,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          IconButton(
            onPressed: reinicializar,
            icon: const Icon(
              Icons.refresh_rounded,
              color: Colors.blueGrey,
              size: 50,
            ),
          )
        ],
      ),
    );
  }
}
