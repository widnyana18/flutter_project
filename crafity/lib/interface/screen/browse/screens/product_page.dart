import 'package:crafity/interface/features/card/cards.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Material(elevation: 8, child: recommendProdBtn),
        Flexible(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                maxCrossAxisExtent: 230,
                childAspectRatio: .65,
              ),
              itemBuilder: (_, index) {
                return CollectionCard();
              },
              itemCount: 12,
            ),
          ),
        ),
      ],
    );
  }

  Widget recommendProdBtn = LimitedBox(
    maxHeight: 50,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(
        productList.length,
        (idx) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: FilterChip(
            label: Text(
              productList[idx],
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            shape: StadiumBorder(),
            backgroundColor: Colors.grey,
            selectedColor: Color(0xFFE36778),
            selected: idx < 3,
            onSelected: (_) {},
          ),
        ),
      ),
    ),
  );

  static List<String> productList = [
    'Woman',
    'Rose',
    'Glamour',
    'Sweetnest',
    'Flowers',
    'Potion'
  ];
}
