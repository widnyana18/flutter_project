import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/screen/browse/screens/screens.dart';
import 'package:flutter/material.dart';

class CatalogFilterPage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return AutoTabsRouter(
      routes: [ProductFilterRoute(), IndustryFilterRoute()],
      builder: (ctx, page, animate) => Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: TabBar(
            indicatorColor: Color(0xFFE36789),
            unselectedLabelColor: Color(0xFF858585),
            labelColor: Color(0xFFE36789),
            tabs: [
              Tab(text: 'Art Product'),
              Tab(text: 'Industry'),
            ],
            onTap: (idx) {
              ctx.tabsRouter.setActiveIndex(idx);
            },
          ),
        ),
        persistentFooterButtons: <Widget>[actionFilter(context)],
        body: page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: TabBar(
            indicatorColor: Color(0xFFE36789),
            unselectedLabelColor: Color(0xFF858585),
            labelColor: Color(0xFFE36789),
            tabs: [
              Tab(text: 'Art Product'),
              Tab(text: 'Industry'),
            ],
          ),
        ),
        persistentFooterButtons: <Widget>[actionFilter(context)],
        body: TabBarView(
          children: [
            ProductFilterPage(),
            IndustryFilterPage(),
          ],
        ),
      ),
    );
  }

  Widget actionFilter(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.height,
        child: Row(
          children: <Widget>[
            Expanded(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  side: BorderSide(color: Color(0xFF858585)),
                ),
                child: Text(
                  'Default',
                  style: TextStyle(
                    color: Color(0xFF858585),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  context.router.pop();
                },
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Color(0xFFA5668B),
                ),
                child: Text(
                  'Launch',
                  style: TextStyle(
                    color: Color(0xFFEEEEEE),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  context.router.pop();
                },
              ),
            ),
          ],
        ),
      );
}

class FilterItemAttribute {
  final String title;
  final List<ItemEntity> entity;

  FilterItemAttribute({this.title, this.entity});
}

class ItemEntity {
  ItemEntity({this.name, this.children});

  final String name;
  final List<ChipItem> children;
}

class ChipItem {
  final String label;
  final bool selected;
  final List<String> dropDownList;

  ChipItem({this.label, this.selected, this.dropDownList});
}
