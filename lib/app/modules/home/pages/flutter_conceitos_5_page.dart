import 'package:apresentacao/app/modules/home/widgets/text_custom_widget.dart';
import 'package:apresentacao/app/modules/home/widgets/text_sub_titulo_widget.dart';
import 'package:apresentacao/app/modules/home/widgets/text_titulo_widget.dart';
import 'package:apresentacao/app/utils/func_tools.dart';
import 'package:flutter/material.dart';

class FlutterConceitos5Page extends StatefulWidget {
  final String title;
  final int numberPage;
  const FlutterConceitos5Page(
      {Key? key, this.title = 'FlutterConceitos5Page', this.numberPage = 5})
      : super(key: key);
  @override
  FlutterConceitos5PageState createState() => FlutterConceitos5PageState();
}

class FlutterConceitos5PageState extends State<FlutterConceitos5Page> {
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
              const Positioned(
                right: 50,
                bottom: 1,
                top: 1,
                child: FlutterLogo(
                  size: 900,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextSubTituloWidget(
                        texto: 'Futter Documentation',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: TextButton(
                          child: const TextCustomWidget(
                              texto: 'https://flutter.dev/docs'),
                          onPressed: () {
                            launchURL('https://flutter.dev/docs');
                          },
                        ),
                      ),
                      const TextSubTituloWidget(
                        texto: 'Dart Packages',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: TextButton(
                          child:
                              const TextCustomWidget(texto: 'https://pub.dev/'),
                          onPressed: () {
                            launchURL('https://pub.dev/');
                          },
                        ),
                      ),
                      const TextSubTituloWidget(
                        texto: 'Comunidade Flutterando',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: TextButton(
                            child: const TextCustomWidget(
                                texto: 'https://blog.flutterando.com.br/'),
                            onPressed: () {
                              launchURL('https://blog.flutterando.com.br/');
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: TextButton(
                            child: const TextCustomWidget(
                                texto: 'https://flutterando.com.br/#/'),
                            onPressed: () {
                              launchURL('https://flutterando.com.br/#/');
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: TextButton(
                            child: const TextCustomWidget(
                                texto: 'https://www.youtube.com/c/Flutterando'),
                            onPressed: () {
                              launchURL(
                                  'https://www.youtube.com/c/Flutterando');
                            }),
                      ),
                      const TextSubTituloWidget(
                        texto: 'Medium - Flutter BR',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: TextButton(
                            child: const TextCustomWidget(
                                texto:
                                    'https://medium.com/flutter-comunidade-br'),
                            onPressed: () {
                              launchURL(
                                  'https://medium.com/flutter-comunidade-br');
                            }),
                      ),
                    ],
                  ),
                ],
              ),
              const Positioned(
                bottom: 10,
                left: 800,
                child: TextTituloWidget(
                  texto: 'Obrigado!',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
