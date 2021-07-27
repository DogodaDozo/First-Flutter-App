import 'package:flutter/material.dart';

import './products.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _products.add('Breakfast');
                    return;
                  });
                },
                child: Text('Add Product'))),
        Products(_products)
      ],
    );
  }
}
