import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';

class SubsPage extends StatefulWidget {
  @override
  _SubsPageState createState() => _SubsPageState();

  static List<String> popupList = ['Top Owner', 'Popular', 'A-Z', 'Date'];
}

class _SubsPageState extends State<SubsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ResponsiveLayout(
            largeScreen: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 270,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                mainAxisExtent: 50,
              ),
              itemCount: 4,
              itemBuilder: (ctx, idx) => userTile(),
            ),
            smallScreen: ListView.builder(
              itemCount: 5,
              itemExtent: 50,
              itemBuilder: (ctx, idx) => Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0),
                child: userTile(),
              ),
            ),
          ),
        ),
        Material(
          color: Colors.white,
          elevation: 20,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Text('14 Subs'),
                Spacer(),
                PopupMenuButton(
                  icon: Icon(
                    Icons.sort,
                    color: Color(0xFFDFDFDF),
                  ),
                  itemBuilder: (_) {
                    return SubsPage.popupList.map((item) {
                      return PopupMenuItem(
                        child: Text(
                          item,
                          style: TextStyle(color: Color(0xFFDFDFDF)),
                        ),
                        value: item,
                      );
                    }).toList();
                  },
                  // initialValue: initValue,
                  onSelected: (value) {},
                  offset: Offset(0, 120),
                ),
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {},
                  color: Color(0xFF858585),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget userTile() => ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('person.jpg'),
        ),
        title: Text(
          'Michael Liver',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: CircleAvatar(
          backgroundColor: Color(0xFFF27496),
          radius: 7,
          child: Text(
            'N',
            style: TextStyle(
              fontSize: 10,
              color: Colors.white,
            ),
          ),
        ),
        onTap: _goToOwner,
      );

  void _goToOwner() {
    context.router.root.push(OwnerDashboardRoute(ownerName: 'rigro_kruch'));
  }
}
