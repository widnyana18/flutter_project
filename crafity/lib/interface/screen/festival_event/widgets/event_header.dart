import 'package:flutter/material.dart';

class EventHeader extends StatelessWidget {
  static Widget previewEvent() {
    List<String> actionBtn = ['Share', 'Bookmark', 'Report', 'Not Interested'];

    return Row(
      children: [
        Text(
          '280',
          style: TextStyle(fontSize: 16),
        ),
        Icon(Icons.person_pin, size: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: CircleAvatar(
            backgroundColor: Color(0xFF858585),
            radius: 3,
          ),
        ),
        ActionChip(
          label: Text(
            '280',
            style: TextStyle(color: Color(0xFF858585)),
          ),
          avatar: Icon(
            Icons.sentiment_very_satisfied,
            color: Color(0xFF858585),
            size: 16,
          ),
          backgroundColor: Colors.transparent,
          onPressed: () {},
        ),
        SizedBox(width: 15),
        PopupMenuButton(
          icon: Icon(
            Icons.more_horiz,
            size: 16,
            color: Color(0xFF858585),
          ),
          itemBuilder: (ctx) {
            return actionBtn.map((item) {
              return PopupMenuItem(
                child: Text(item),
                value: actionBtn.indexOf(item),
              );
            }).toList();
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('person.jpg'),
          ),
          title: Text(
            'Daniel Mirowlo',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Row(
            children: [
              Text(
                'Bali, Indonesia',
                style: TextStyle(color: Color(0xFF6794E3)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: CircleAvatar(
                  backgroundColor: Color(0xFF858585),
                  radius: 3,
                ),
              ),
              Text('Until 2 Jun'),
            ],
          ),
        ),
        Row(
          children: [
            SizedBox(width: 70),
            previewEvent(),
          ],
        )
      ],
    );
  }
}
