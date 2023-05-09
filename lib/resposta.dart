import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta({
    Key? key,
    this.onPressed,
    required this.texto,
  }) : super(key: key);

  final Function? onPressed;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed == null ? null : onPressed as void Function(),
        child: Text(texto),
      ),
    );
  }
}
