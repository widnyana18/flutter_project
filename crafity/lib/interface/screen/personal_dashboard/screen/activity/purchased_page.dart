import 'package:crafity/interface/features/card/custom_card.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';

class PurchasedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ResponsiveLayout(
        largeScreen: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 310,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            mainAxisExtent: 100,
          ),
          itemCount: 4,
          itemBuilder: (ctx, idx) => purchasedCard(),
        ),
        smallScreen: ListView.builder(
          itemBuilder: (ctx, idx) => Padding(
            padding: EdgeInsets.symmetric(vertical: 6),
            child: purchasedCard(),
          ),
          itemCount: 6,
          itemExtent: 100,
        ),
      ),
    );
  }

  Widget purchasedCard() => CustomCard(
        subtitle: Row(
          children: <Widget>[
            Flexible(
              child: Text(
                'Cosmic Gate',
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: CircleAvatar(
                radius: 2,
                backgroundColor: Color(0xFF858585),
              ),
            ),
            Text('2'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: CircleAvatar(
                radius: 2,
                backgroundColor: Color(0xFF858585),
              ),
            ),
            Text(
              '\$45',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: CircleAvatar(
                radius: 2,
                backgroundColor: Color(0xFF858585),
              ),
            ),
            Text(
              '5h',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        hero: 'perfume9.jpg',
        title: 'Deu Las Perfume',
        trailing: SizedBox.shrink(),
        onTap: () {},
      );
}
