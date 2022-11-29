import 'package:flutter/material.dart';

class TextSubTituloWidget extends StatelessWidget {
  final String texto;
  const TextSubTituloWidget({Key? key, this.texto = "TextSubTituloWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
    );
  }
}
