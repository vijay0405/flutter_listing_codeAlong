import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  final List<String> items;

  Products(this.items);
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: items
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
