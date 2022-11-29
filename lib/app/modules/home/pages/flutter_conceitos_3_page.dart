import 'package:apresentacao/app/modules/home/widgets/text_custom_widget.dart';
import 'package:flutter/material.dart';

class FlutterConceitos3Page extends StatefulWidget {
  final String title;
  final int numberPage;
  const FlutterConceitos3Page(
      {Key? key, this.title = 'FlutterConceitos3Page', this.numberPage = 3})
      : super(key: key);
  @override
  FlutterConceitos3PageState createState() => FlutterConceitos3PageState();
}

class FlutterConceitos3PageState extends State<FlutterConceitos3Page> {
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
          child: Container(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Positioned(
                    left: 250,
                    child: Image.asset(
                      'imagens/grafico_interesse.png',
                      width: 900,
                      height: 700,
                    )),
                const Positioned(
                  left: 500,
                  top: 460,
                  child: TextCustomWidget(
                    texto: 'Gráfico de interesse ao longo do tempo.',
                    size: 22,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        TextCustomWidget(
                          texto: 'Google',
                        ),
                        TextCustomWidget(
                          texto: 'Ifood',
                        ),
                        TextCustomWidget(
                          texto: 'Nubank',
                        ),
                        TextCustomWidget(
                          texto: 'Serpro',
                        ),
                        TextCustomWidget(
                          texto: 'Ebay',
                        ),
                        TextCustomWidget(
                          texto: 'Canonical',
                        ),
                        TextCustomWidget(
                          texto: 'Microsoft',
                        ),
                        TextCustomWidget(
                          texto: 'BMW',
                        ),
                        TextCustomWidget(
                          texto: 'Toyota',
                        ),
                        TextCustomWidget(
                          texto: '...',
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'imagens/empresas.png',
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50.0, right: 50.0),
                              child: Image.asset(
                                'imagens/nubank.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            Image.asset(
                              'imagens/ifood.jpg',
                              width: 200,
                              height: 200,
                            ),

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50.0, right: 50.0),
                              child: Image.asset(
                                'imagens/ubuntu.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            // Image.asset('imagens/ubuntu.png'),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'imagens/serpro.png',
                              width: 300,
                              height: 300,
                            ),

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50.0, right: 50.0),
                              child: Image.asset(
                                'imagens/toyota.png',
                                width: 200,
                                height: 200,
                              ),
                            ),
                            // Image.asset('imagens/ubuntu.png'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
