import 'package:flutter/material.dart';

class OwnerProfile extends StatelessWidget {
  OwnerProfile({this.actionFeatures});
  final Widget actionFeatures;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.topCenter,
          children: [
            AspectRatio(
              aspectRatio: 5 / 3,
              child: InteractiveViewer(
                child: PageView.builder(
                  itemCount: 2,
                  itemBuilder: (ctx, idx) => Image.asset(
                    'perfume9.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12),
              child: AspectRatio(
                aspectRatio: 1.35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: CircleAvatar(
                            backgroundColor: Colors.white60,
                            radius: 3,
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('person.jpg'),
                      radius: 60,
                      child: Align(
                        alignment: Alignment(.8, .8),
                        child: CircleAvatar(
                          radius: 12,
                          child: Icon(
                            Icons.verified_user,
                            size: 14,
                            color: Color(0xFFDFDFDF),
                          ),
                          backgroundColor: Color(0xFF8174F2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Roland Camel',
            style: TextStyle(
              fontFamily: 'open Sans',
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Owner Paramecium',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(height: 15),
        actionFeatures ?? SizedBox.shrink(),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 18),
          child: Column(
            children: statusList
                .map(
                  (item) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(item.atribute),
                      Text(
                        item.count,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
        Text(
          'Achievement',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: achiev
              .map(
                (item) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: Tooltip(
                    message: item.msg,
                    child: Icon(item.icon, size: 20),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }

  List<AchievAtr> achiev = [
    AchievAtr(
        icon: Icons.build_circle,
        msg: 'Any product we can prevent and you can build your shop free'),
    AchievAtr(
        icon: Icons.shield,
        msg: 'Any product we can prevent and you can build your shop free'),
    AchievAtr(
        icon: Icons.bar_chart,
        msg: 'Any product we can prevent and you can build your shop free'),
    AchievAtr(
        icon: Icons.storefront,
        msg: 'Any product we can prevent and you can build your shop free'),
  ];

  List<StatusOwner> statusList = [
    StatusOwner(
      atribute: 'Customers',
      count: '120',
    ),
    StatusOwner(
      atribute: 'Products',
      count: '231',
    ),
    StatusOwner(
      atribute: 'Experience',
      count: '7.6',
    ),
  ];
}

class AchievAtr {
  AchievAtr({this.icon, this.msg});

  final IconData icon;
  final String msg;
}

class StatusOwner {
  StatusOwner({this.atribute, this.count});

  final String atribute;
  final String count;
}
