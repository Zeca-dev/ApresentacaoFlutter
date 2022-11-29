import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  final int numNotificacoes;
  const BadgeWidget({Key? key, this.numNotificacoes = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const Icon(Icons.notification_important, size: 100, color: Colors.grey),
      Positioned(
        left: 60,
        top: 20,
        child: Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(3.0),
          color: Colors.red,
          child: Center(
            child: Text(
              '$numNotificacoes',
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
    ]);
  }
}
