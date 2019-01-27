import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {

  final String StartingProduct;

  ProductManager(this.StartingProduct);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _productManagerState();
  }
}

class _productManagerState extends State<ProductManager> {
  List<String> _items = [];
 
  @override
  void initState() {
    super.initState();
    _items.add(widget.StartingProduct);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[ Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        child: Text("Add Product"),
        onPressed: () {
          setState(() {
            _items.add('Advanced Food Tester');
          });
        },
      ),
    ),Products(_items)],);
  }
}
