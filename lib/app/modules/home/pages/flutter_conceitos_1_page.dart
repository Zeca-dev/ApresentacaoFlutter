import 'package:apresentacao/app/modules/home/home_store.dart';
import 'package:apresentacao/app/modules/home/widgets/badge_widget.dart';
import 'package:apresentacao/app/modules/home/widgets/text_custom_widget.dart';
import 'package:apresentacao/app/modules/home/widgets/text_sub_titulo_widget.dart';
import 'package:apresentacao/app/utils/func_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FlutterConceitos1Page extends StatefulWidget {
  final String title;
  final int numberPage;
  const FlutterConceitos1Page(
      {Key? key, this.title = 'O que é o Flutter', this.numberPage = 1})
      : super(key: key);
  @override
  FlutterConceitos1PageState createState() => FlutterConceitos1PageState();
}

class FlutterConceitos1PageState extends State<FlutterConceitos1Page> {
  final HomeStore store = Modular.get<HomeStore>();
  int numNotificacoes = 3;
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
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TextSubTituloWidget(
                        texto: 'Linguagem Dart',
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 96.0),
                        child: TextCustomWidget(
                          texto:
                              '# CookBooks, codelabs, tutoriais, Apps de exemplo, boa documentação',
                          size: 22,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 96.0),
                        child: TextCustomWidget(
                          texto: '# Guias para quem vem de outras linguagens',
                          size: 22,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 96.0),
                        child: TextCustomWidget(
                          texto: '# Baixa curva de aprendizado',
                          size: 22,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(
                          texto: '- Linguagem Declarativa',
                          padding: 8.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 96.0),
                        child: TextCustomWidget(
                          texto: '# React-Native/SwiftUI/Kotlin (Compose)',
                          size: 22,
                        ),
                      ),
                      TextSubTituloWidget(
                        texto: 'Flutter',
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(
                            texto: '- Criado em 2015(Sky) e lançada em 2018'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(
                          texto: '- Utiliza Skia',
                          padding: 8.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 96.0),
                        child: TextCustomWidget(
                          texto:
                              '# Poderosa biblioteca gráfica (Chrome, Firefox, Android, LibreOffice)',
                          padding: 8.0,
                          size: 22,
                        ),
                      ),
                      TextSubTituloWidget(
                        texto: 'Hot reload',
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(
                          texto: '- Visualiza modificações ao salvar código',
                          padding: 8.0,
                        ),
                      ),
                      TextSubTituloWidget(
                        texto: 'Multiplataforma',
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(
                          texto:
                              '- Compila para nativo/desempenho (60fps a 120fps)',
                          padding: 8.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(
                          texto:
                              '- Android/IOS/Web/Windows/Linux/Mac/Sistemas embarcados',
                          padding: 8.0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const TextCustomWidget(
                            texto: 'Imperativa x Declarativa',
                          ),
                          if (numNotificacoes > 0)
                            BadgeWidget(
                              numNotificacoes: numNotificacoes,
                            ),
                        ],
                      ),
                      Image.asset(
                        'imagens/imperativa.png',
                        width: 500,
                        height: 500,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Image.asset(
                        'imagens/declarativa.png',
                        height: 200,
                        width: 700,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
