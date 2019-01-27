import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {

  final String title;
  final String imageUrl;

  ProductDetailPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title + ' info'),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(imageUrl),
              Container(child: Text(title),padding: EdgeInsets.all(10.0),),
              Container(child: RaisedButton(
                child: Text("Remove"),
                onPressed: () => Navigator.pop(context, true),
              ),padding: EdgeInsets.all(10.0),) 
            ],
          ),
        );
  }
}
