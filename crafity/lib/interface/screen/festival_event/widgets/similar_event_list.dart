import 'package:crafity/interface/screen/festival_event/widgets/event_card.dart';
import 'package:flutter/material.dart';

class SimilarEventList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: SizedBox(
            height: 60,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (ctx, idx) => Padding(
                padding: EdgeInsets.only(right: 12),
                child: ChoiceChip(
                  shape: StadiumBorder(
                    side: BorderSide(color: Color(0xFF858585)),
                  ),
                  backgroundColor: Colors.transparent,
                  selectedColor: Colors.transparent,
                  selected: false,
                  onSelected: (i) {},
                  label: Text('Similar'),
                ),
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(20),
            itemCount: 3,
            itemExtent: 160,
            itemBuilder: (ctx, idx) => Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: EventCard(horizontalView: true),
            ),
          ),
        ),
      ],
    );
  }
}
