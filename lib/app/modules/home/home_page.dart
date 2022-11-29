import 'package:apresentacao/app/modules/home/pages/flutter_conceitos_1_page.dart';
import 'package:apresentacao/app/modules/home/pages/flutter_conceitos_2_page.dart';
import 'package:apresentacao/app/modules/home/pages/flutter_conceitos_3_page.dart';
import 'package:apresentacao/app/modules/home/pages/flutter_conceitos_4_page.dart';
import 'package:apresentacao/app/modules/home/pages/flutter_conceitos_5_page.dart';
import 'package:apresentacao/app/modules/home/pages/quem_sou_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        leading: const FlutterLogo(
          size: 50,
        ),
        backgroundColor: Colors.grey[200],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Conhecendo o Flutter',
              style: TextStyle(color: Colors.blue, fontSize: 50),
            ),
            Text(
              'José Carlos',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ],
        ),
      ),
      body: ScopedBuilder<HomeStore, Exception, int>(
        store: store,
        onLoading: (_) {
          return const Center(child: CircularProgressIndicator());
        },
        onState: (_, position) {
          return IndexedStack(
            index: position,
            // index: 6,
            children: [
              const SizedBox(),
              QuemSouPage(
                title: 'Quem sou',
                numberPage: position,
              ),
              FlutterConceitos1Page(
                title: 'O que é o Flutter',
                numberPage: position,
              ),
              FlutterConceitos2Page(
                title: 'O que é o Flutter',
                numberPage: position,
              ),
              FlutterConceitos3Page(
                title: 'Quem usa Flutter',
                numberPage: position,
              ),
              FlutterConceitos4Page(
                title: 'Flutter na prática',
                numberPage: position,
              ),
              FlutterConceitos5Page(
                title: 'Referências',
                numberPage: position,
              ),
            ],
          );
        },
        onError: (context, error) => const Center(
          child: Text(
            'Falha',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              store.decrement();
            },
            child: const Icon(Icons.arrow_back),
          ),
          const SizedBox(
            width: 30,
          ),
          FloatingActionButton(
            onPressed: () {
              store.increment();
            },
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
