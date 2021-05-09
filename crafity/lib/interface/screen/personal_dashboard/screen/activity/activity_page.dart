import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        SubsRoute(),
        BookmarkRoute(),
        DeliveryStatusRoute(),
        PurchasedRoute(),
      ],
      builder: (ctx, view, anim) => DefaultTabController(
        length: 4,
        initialIndex: ctx.tabsRouter.activeIndex,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Activity',
              style: TextStyle(
                fontFamily: 'Open Sans',
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
                color: Color(0xFF858585),
              ),
            ],
            bottom: TabBar(
              indicatorColor: Color(0xFFE36789),
              unselectedLabelColor: Color(0xFF858585),
              labelColor: Color(0xFFE36789),
              tabs: [
                Tab(text: 'Subs'),
                Tab(text: 'Bookmark'),
                Tab(text: 'Delivery'),
                Tab(text: 'Purchased'),
              ],
              onTap: (idx) {
                ctx.tabsRouter.setActiveIndex(idx);
              },
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(15),
            child: view,
          ),
        ),
      ),
    );
  }
}
