import 'package:apresentacao/app/modules/home/widgets/text_custom_widget.dart';
import 'package:apresentacao/app/modules/home/widgets/text_titulo_widget.dart';
import 'package:flutter/material.dart';

class QuemSouPage extends StatefulWidget {
  final String title;
  final int numberPage;
  const QuemSouPage({Key? key, this.title = 'Quem sou', this.numberPage = 0})
      : super(key: key);
  @override
  QuemSouPageState createState() => QuemSouPageState();
}

class QuemSouPageState extends State<QuemSouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextCustomWidget(
              texto: widget.numberPage.toString(),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Image.asset(
              'imagens/Zeca.jpg',
              width: 800,
              height: 800,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  TextTituloWidget(
                    texto: 'José Carlos',
                  ),
                  TextCustomWidget(
                    texto: 'Mossoró-RN',
                  ),
                  TextCustomWidget(
                    texto: 'Bacharel em Ciência da Computação - Ufersa-RN.',
                  ),
                  TextCustomWidget(
                    texto: 'Hobby: Música',
                  ),
                  TextCustomWidget(
                    texto: '8 anos de BNB!',
                  ),
                  TextCustomWidget(
                    texto: 'Estudar e aprender coisas novas.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
