import 'package:flutter/material.dart';

class ProductController extends StatelessWidget {
  final Function addProduct;

  ProductController(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            onPressed: () {
              addProduct('Fruits');
            },
            child: Text('Add Product'),
          );
  }
}