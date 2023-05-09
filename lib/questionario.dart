import 'package:flutter/material.dart';
import 'package:perguntas/questao.dart';
import 'package:perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  const Questionario(
      {Key? key,
      required this.perguntas,
      required this.perguntaSelecionada,
      required this.responder})
      : super(key: key);

  final List perguntas;
  final int perguntaSelecionada;
  final Function responder;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['resposta']
        : [];

    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Questao(texto: perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map((texto) => Resposta(texto: texto, onPressed: responder))
            .toList(),
      ],
    ));
  }
}
