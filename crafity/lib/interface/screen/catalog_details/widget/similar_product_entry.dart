import 'package:crafity/interface/features/card/cards.dart';
import 'package:crafity/interface/util/sliver_header_delegate.dart';
import 'package:flutter/material.dart';

class SimilarProductEntry extends StatelessWidget {
  static Widget role(List<String> data) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverHeaderDelegate(
        minHeight: 60,
        maxHeight: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (ctx, idx) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: ChoiceChip(
                shape: StadiumBorder(
                  side: BorderSide(color: Color(0xFF858585)),
                ),
                backgroundColor: Colors.transparent,
                selectedColor: Colors.transparent,
                selected: false,
                onSelected: (i) {},
                label: Text(data[idx]),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      sliver: SliverFixedExtentList(
        itemExtent: 152,
        delegate: SliverChildBuilderDelegate(
          (ctx, idx) => Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: ProductCard(horizontalView: true),
          ),
          childCount: 3,
        ),
      ),
    );
  }
}
