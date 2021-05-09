import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/features/card/custom_card.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';

class NotifAppPage extends StatefulWidget {
  @override
  _NotifAppPageState createState() => _NotifAppPageState();
}

class _NotifAppPageState extends State<NotifAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Notification',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Open Sans',
          ),
        ),
      ),
      body: ResponsiveLayout(
        largeScreen: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 320,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            mainAxisExtent: 120,
          ),
          padding: EdgeInsets.all(18),
          itemCount: 4,
          itemBuilder: (ctx, idx) => notifCard(),
        ),
        smallScreen: ListView.builder(
          padding: EdgeInsets.all(15.0),
          itemExtent: 124,
          itemBuilder: (ctx, idx) => Padding(
            padding: EdgeInsets.symmetric(vertical: 7),
            child: notifCard(),
          ),
          itemCount: 3,
        ),
      ),
    );
  }

  Widget notifCard() => CustomCard(
        title: 'Deu Las Perfume',
        hero: 'perfume9.jpg',
        onTap: () {
          context.router
              .push(NotifDetailsRoute(notifName: 'new product out now'));
        },
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Crafity Center',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF858585),
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
                  '2 weeks ago',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF858585),
                  ),
                ),
              ],
            ),
            Text(
              'tempore impedit autem consectetur qui amet Exercitationem tempore.... ',
              maxLines: 2,
            ),
          ],
        ),
      );
}

class Feature {
  Feature(this.title, {this.user, this.desc, this.photo});

  final String title;
  final String user;
  final String desc;
  final String photo;
}
