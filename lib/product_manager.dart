import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final Map<String,String> StartingProduct;

  ProductManager({this.StartingProduct});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _productManagerState();
  }
}

class _productManagerState extends State<ProductManager> {
  List<Map<String,String>> _items = [];

  @override
  void initState() {
    super.initState();
    if(widget.StartingProduct != null) {
    _items.add(widget.StartingProduct);
    }
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(Map<String,String> product) {
    setState(() {
      _items.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.all(10.0), child: ProductControl(_addProduct)),
            Expanded(child:Products(_items))
      ],
    );
  }
}
