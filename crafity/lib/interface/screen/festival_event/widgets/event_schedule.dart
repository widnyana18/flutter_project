import 'package:flutter/material.dart';

class EventSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.event_available, color: Colors.grey),
              SizedBox(width: 10),
              Text(
                '20 March 2021',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.location_on, color: Color(0xFF6794E3)),
              SizedBox(width: 10),
              Flexible(
                child: Text(
                  'Carnavol Street 88, Munggu, South Kuta, Badung, Bali, Indonesia',
                  style: TextStyle(fontSize: 16, color: Color(0xFF6794E3)),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: scheduleItem
                .map(
                  (item) => Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFFF6B16C),
                              radius: 15,
                              child: Text(
                                scheduleItem.indexOf(item).toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            VerticalDivider(color: Color(0xFFF6B16C)),
                          ],
                        ),
                        SizedBox(width: 15),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.title,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(item.desc),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  List<ScheduleTile> scheduleItem = [
    ScheduleTile(
      title: '22 March',
      desc: 'you interest, check details to get more information.',
    ),
    ScheduleTile(
      title: '26 March',
      desc: 'you interest, check details to get more information. you interest,'
          'check details to get more information additional can get in',
    ),
  ];
}

class ScheduleTile {
  ScheduleTile({this.title, this.desc});
  final String title;
  final String desc;
}
