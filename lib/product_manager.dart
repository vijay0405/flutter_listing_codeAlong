import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatelessWidget {
 final List<Map<String,dynamic>> _items;

 ProductManager(this._items);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
            Expanded(child:Products(_items))
      ],
    );
  }
}
