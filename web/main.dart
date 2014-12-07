import 'package:polymer/polymer.dart';
import 'dart:html';

import 'package:site/app.dart';

void main() {
  initPolymer().run(() {
    Polymer.onReady.then((_) {
      window.onResize.listen((_) {
        (querySelector("dc-app") as DCAppElement).windowResize(window.innerWidth);
      });
    });
  });
}
