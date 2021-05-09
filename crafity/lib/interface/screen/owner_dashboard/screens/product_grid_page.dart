import 'package:crafity/interface/features/card/product_card.dart';
import 'package:flutter/material.dart';

class ProductGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        maxCrossAxisExtent: 230,
        childAspectRatio: .66,
      ),
      itemBuilder: (ctx, idx) {
        return ProductCard();
      },
      itemCount: 8,
    );
  }
}
