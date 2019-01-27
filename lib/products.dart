import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String,String>> items;
  final Function deleteProduct;


  Products(this.items, {this.deleteProduct});

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(items[index]['image']),
          Text(items[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("Details"),
                onPressed: () {
                  Navigator.pushNamed<bool>(context, '/product/'+index.toString()).then((bool value){
                    if(value){
                      deleteProduct(index);
                    }
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard = Center(child: Text("No Products Found"));
    if (items.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: items.length,
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
