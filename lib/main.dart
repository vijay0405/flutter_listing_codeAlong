import 'package:flutter/material.dart';
import './pages/productAdmin.dart';
import './pages/products.dart';
import './pages/product.dart';
import './pages/auth.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<Myapp> {
  List<Map<String, dynamic>> items = [];

  void _addProduct(Map<String, dynamic> product) {
    setState(() {
      items.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.red,
          accentColor: Colors.teal),
      // home: AuthPage(),
      routes: {
        '/': (BuildContext context) =>AuthPage(),
        '/products': (BuildContext context) =>ProductsPage(items),
        '/admin': (BuildContext context) => ProductAdminPage( _addProduct, _deleteProduct)
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(builder: (BuildContext context) {
            return ProductDetailPage(
                items[index]['title'], items[index]['image']);
          });
        }
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                ProductsPage(items));
      },
    );
  }
}
