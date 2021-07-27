import 'package:flutter/material.dart';

import './product_manager.dart';

class PageControl extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
        return PageView(
          scrollDirection: Axis.horizontal,
          controller: controller,
          children: <Widget>[
            Center(
              child: Text('First Page'),
            ),
            Center(
              child: ProductManager(firstProduct: 'Breakfast'),
            ),
            Center(
              child: Text('Third Page'),
            )
          ],
        );
  }
}