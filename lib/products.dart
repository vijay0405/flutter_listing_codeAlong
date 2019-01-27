import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  final List<String> items;

  Products(this.items);
  
  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(items[index])
                  ],
                ),
              );
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: items.length,
    );
  }
}
