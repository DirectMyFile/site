import 'dart:html';

import 'package:polymer/polymer.dart';
import 'package:core_elements/core_drawer_panel.dart';

@CustomTag('dc-app')
class DCAppElement extends PolymerElement {

  int _preWidth = 0;
  
  DCAppElement.created() : super.created() {
    $["header"].addEventListener('menu-toggle', (_) {
      toggleDrawer();
    });
  }

  toggleDrawer() => ($["drawer"] as CoreDrawerPanel).togglePanel();

  closeDrawer() => ($["drawer"] as CoreDrawerPanel).closeDrawer();

  windowResize(int width) {
    if(width >= 768 && width > _preWidth) {
      (querySelector("dc-app") as DCAppElement).closeDrawer();
    }
    _preWidth = width;
  }
}
