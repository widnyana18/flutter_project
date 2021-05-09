import 'package:crafity/interface/features/card/cards.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';

class BookmarkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 240,
          childAspectRatio: .7,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: 4,
        itemBuilder: (ctx, idx) => ProductCard(
          canEditCard: true,
        ),
      ),
      smallScreen: ListView.builder(
        itemBuilder: (ctx, idx) => Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: ProductCard(
            horizontalView: true,
            canEditCard: true,
          ),
        ),
        itemCount: 3,
        itemExtent: 160,
      ),
    );
  }
}
