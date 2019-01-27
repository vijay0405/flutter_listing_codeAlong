import 'package:flutter/material.dart';

import './product_manager.dart';

void main() {
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
          body: ProductManager()),
    );
  }
}
