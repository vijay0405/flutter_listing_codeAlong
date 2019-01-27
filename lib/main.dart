import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './product_manager.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(Myapp());

}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        accentColor: Colors.teal
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Listing"),
          ),
          body: ProductManager('Food Tester')),
    );
  }
}
