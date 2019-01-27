import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatelessWidget {
 final List<Map<String,String>> _items;
 final Function addProduct;
 final Function deleteProduct;

 ProductManager(this._items, this.addProduct, this.deleteProduct);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.all(10.0), child: ProductControl(addProduct)),
            Expanded(child:Products(_items, deleteProduct:deleteProduct))
      ],
    );
  }
}
