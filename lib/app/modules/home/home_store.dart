import 'package:flutter_triple/flutter_triple.dart';

class HomeStore extends NotifierStore<Exception, int> {
  HomeStore() : super(1);

  increment() {
    if (state < 6) {
      int value = state + 1;
      update(value);
    }
  }

  decrement() {
    if (state > 1) {
      int value = state - 1;
      update(value);
    }
  }
}
