import 'package:polymer/polymer.dart';
import 'dart:html';

import 'package:site/app.dart';

int _preWidth = 0;

void main() {
  initPolymer().run(() {
    Polymer.onReady.then((_) {
      window.onResize.listen((_) {
        if(window.innerWidth >= 768) {
          if(window.innerWidth > _preWidth)
            (querySelector("dc-app") as DCAppElement).closeDrawer();
        }
        _preWidth = window.innerWidth;
      });
    });
  });
}
