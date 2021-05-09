import 'package:crafity/interface/screen/request_order/widgets/order_card.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IdeaDraft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Container(
            height: 60,
            padding: EdgeInsets.all(15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemList.length,
              itemBuilder: (ctx, idx) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ChoiceChip(
                    shape: StadiumBorder(
                      side: BorderSide(color: Color(0xFF858585)),
                    ),
                    backgroundColor: Colors.transparent,
                    selectedColor: Colors.transparent,
                    selected: false,
                    onSelected: (i) {},
                    label: Text(itemList[idx]),
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemExtent: 125,
            itemBuilder: (ctx, idx) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: OrderCard(horizontalView: true),
              );
            },
          ),
        ),
      ],
    );
  }

  List<String> itemList = ['Similar', 'Daniel Conte', 'Perfume', 'Young'];
}
