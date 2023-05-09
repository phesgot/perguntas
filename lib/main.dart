import 'package:flutter/material.dart';
import 'package:perguntas/questionario.dart';
import 'package:perguntas/resultado.dart';

main() => runApp(const PerguntaApp());

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final List _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'resposta': ['Preto', 'Vermelho', 'Verde', 'Branco']
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': ['Coelho', 'Cobra', 'Elefante', 'Leão']
    },
    {
      'texto': 'Qual sua comida favorita?',
      'resposta': ['Batata frita', 'Lasanha', 'Panqueca', 'Frango empanado']
    }
  ];

  void _reponder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
          centerTitle: true,
          elevation: 0,
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _reponder,
              )
            : const Resultado(),
      ),
    );
  }
}
