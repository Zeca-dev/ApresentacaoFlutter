import 'package:flutter/material.dart';

class TextTituloWidget extends StatelessWidget {
  final String texto;
  const TextTituloWidget({Key? key, this.texto = "TextTituloWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
