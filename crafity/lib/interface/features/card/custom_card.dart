import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    this.title,
    this.hero,
    this.onTap,
    this.subtitle,
    Widget trailing,
  }) : this.trailing = trailing ?? SizedBox.shrink();

  final String title;
  final String hero;
  final VoidCallback onTap;
  final Widget subtitle;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(hero),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle,
                  ],
                ),
              ),
            ),
            trailing,
          ],
        ),
      ),
    );
  }
}

class ProductTileData {
  ProductTileData({
    this.hero,
    this.prodName,
    this.company,
    this.rate,
    this.price,
    this.onTap,
    this.colors,
  });

  final String hero;
  final String prodName;
  final String company;
  final double rate;
  final int price;
  final List<int> colors;
  final VoidCallback onTap;
}
