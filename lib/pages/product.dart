import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Product Detail"),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/food.jpg'),
              Container(child: Text("item info"),padding: EdgeInsets.all(10.0),),
              Container(child: RaisedButton(
                child: Text("back"),
                onPressed: () => Navigator.pop(context),
              ),padding: EdgeInsets.all(10.0),) 
            ],
          ),
        );
  }
}
