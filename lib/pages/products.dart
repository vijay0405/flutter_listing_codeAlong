import 'package:flutter/material.dart';

import '../product_manager.dart';

class ProductsPage extends StatelessWidget {
  List<Map<String, dynamic>> items;

  ProductsPage(this.items);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text("choose"),
              ),
              ListTile(
                title: Text("Manage Products"),
                onTap: () {
                  Navigator.pushReplacementNamed(context,'/admin');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Listing"),
        ),
        body: ProductManager(items));
  }
}
