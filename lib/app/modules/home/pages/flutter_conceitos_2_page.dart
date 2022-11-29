import 'package:apresentacao/app/modules/home/widgets/text_custom_widget.dart';
import 'package:apresentacao/app/modules/home/widgets/text_sub_titulo_widget.dart';
import 'package:flutter/material.dart';

class FlutterConceitos2Page extends StatefulWidget {
  final String title;
  final int numberPage;
  const FlutterConceitos2Page(
      {Key? key, this.title = 'FlutterConceitos2Page', this.numberPage = 2})
      : super(key: key);
  @override
  FlutterConceitos2PageState createState() => FlutterConceitos2PageState();
}

class FlutterConceitos2PageState extends State<FlutterConceitos2Page> {
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
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 64.0),
                child: Center(
                  child: Image.asset(
                    'imagens/componentes.png',
                    width: 400,
                    height: 735,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TextSubTituloWidget(
                        texto: 'Desenvolvimento rápido e fácil (Widgets)',
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(texto: '- Utiliza composição'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(texto: '- Componentização'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(texto: '- Customizável'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child:
                            TextCustomWidget(texto: '- Material e Cupertino'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(texto: '- Identidade visual'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 96.0),
                        child: TextCustomWidget(
                          texto: '# componentes e cores',
                          size: 22,
                        ),
                      ),
                      TextSubTituloWidget(
                        texto: 'Controle de cada pixel e cada gesto',
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(
                            texto: '- Classes para desenhar na tela'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(
                            texto: '- Classes que detectam toques'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child:
                            TextCustomWidget(texto: '- Classes para animações'),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TextSubTituloWidget(
                        texto: 'Google e Comunidade',
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(
                            texto: '- Atualizações frequentes'),
                      ),
                      TextSubTituloWidget(
                        texto: 'Packages diversos',
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(
                            texto:
                                '- Hardware, banco de dados, \nAPIs, customizações, etc'),
                      ),
                      TextSubTituloWidget(
                        texto: 'Comunidade ativa',
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(
                            texto: '- Solução de problemas e dúvidas'),
                      ),
                      TextSubTituloWidget(
                        texto: 'Segurança',
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(
                            texto: '- Ofuscação de código por padrão'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(
                            texto: '- Packages para criptografia'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0),
                        child: TextCustomWidget(
                            texto: '- Bibliotecas para testes automatizados'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 96.0),
                        child: TextCustomWidget(
                          texto: '# Unidade, integração, UI',
                          size: 22,
                        ),
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
