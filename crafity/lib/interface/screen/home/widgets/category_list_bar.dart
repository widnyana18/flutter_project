import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CategoryListBar extends StatefulWidget {
  @override
  _CategoryListBarState createState() => _CategoryListBarState();
}

class _CategoryListBarState extends State<CategoryListBar> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 60,
      title: SizedBox(
        height: 32,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            buttonList.length,
            (idx) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(
                    color: index == idx ? Color(0xFFA74D76) : Color(0xFF858585),
                  ),
                ),
                onPressed: () {
                  setState(() => index = idx);
//              buttonList[idx].event;
                },
                child: Text(
                  buttonList[idx].text,
                  style: TextStyle(
                    color: index == idx ? Color(0xFFA74D76) : Color(0xFF858585),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      pinned: true,
    );
  }

  List<ButtonItem> buttonList = [
    ButtonItem(text: 'Suggest For You', event: () {}),
    ButtonItem(text: 'Trending Now', event: () {}),
    ButtonItem(text: 'Most Searched', event: () {}),
    ButtonItem(text: 'Fulltime Care', event: () {}),
    ButtonItem(text: 'For Epic Moment', event: () {}),
    ButtonItem(text: 'Big Discount', event: () {}),
    ButtonItem(text: 'Rare', event: () {}),
    ButtonItem(text: 'New Realease', event: () {}),
  ];
}

class ButtonItem {
  ButtonItem({this.text, this.event});

  final String text;
  final VoidCallback event;
}
