import 'package:flutter/material.dart';

import './products.dart';
import './product_controller.dart';

class ProductManager extends StatefulWidget {
  final String firstProduct;

  ProductManager({this.firstProduct = ''});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.firstProduct);
    super.initState();
  }

  void _addProducts(String product) {
    setState(() {
      _products.add(product);
      return;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductController(_addProducts),
        ),
        Products(_products)
      ],
    );
  }
}
