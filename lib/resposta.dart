import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta({
    Key? key,
    this.quandoSelecionado,
    required this.texto,
  }) : super(key: key);

  final void Function()? quandoSelecionado;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey,
        ),
        onPressed: quandoSelecionado == null ? null : quandoSelecionado as void Function(),
        child: Text(texto),
      ),
    );
  }
}
