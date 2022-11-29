import 'package:flutter/material.dart';

class TextCustomWidget extends StatelessWidget {
  final String texto;
  final double size;
  final double padding;
  const TextCustomWidget(
      {Key? key,
      this.texto = "TextCustomWidget",
      this.size = 30.0,
      this.padding = 16.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Text(
        texto,
        style: TextStyle(fontSize: size),
      ),
    );
  }
}
