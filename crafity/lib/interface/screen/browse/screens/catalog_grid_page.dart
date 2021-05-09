import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/screen/browse/screens/catalog_filter_page.dart';
import 'package:crafity/interface/util/utils.dart';
import 'package:flutter/material.dart';

import 'package:crafity/interface/features/widgets.dart';

class CatalogGridPage extends StatelessWidget {
  final String browseResult;
  CatalogGridPage({@PathParam('browseResult') this.browseResult});

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [ProductRoute(), IndustryRoute()],
      builder: (ctx, page, animate) => ResponsiveLayout(
        largeScreen: Scaffold(
          key: _scaffoldKey,
          backgroundColor: Color(0xFFF9F9F9),
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: SearchBar(),
            actions: catalogFeature(
              ctx.tabsRouter,
              onFilterEvent: () {
                _scaffoldKey.currentState.openEndDrawer();
              },
            ),
          ),
          endDrawer: Drawer(child: CatalogFilterPage()),
          endDrawerEnableOpenDragGesture: false,
          floatingActionButton: FloatingBtn(),
          body: page,
        ),
        smallScreen: Scaffold(
          floatingActionButton: FloatingBtn(),
          body: NestedScrollView(
            headerSliverBuilder: (ctx, _) => [
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeaderDelegate(
                  minHeight: 60,
                  maxHeight: 60,
                  child: Text(
                    'Browse',
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  collapseChild: SearchBar(
                    otherAction: catalogFeature(
                      ctx.tabsRouter,
                      onFilterEvent: () {
                        context.router.push(CatalogFilterRoute());
                      },
                    ),
                  ),
                ),
              ),
            ],
            body: page,
          ),
        ),
      ),
    );
  }

  List<Widget> catalogFeature(TabsRouter tabsRouter,
          {VoidCallback onFilterEvent}) =>
      [
        IconButton(
          onPressed: onFilterEvent,
          icon: Icon(
            Icons.filter_list,
          ),
          color: Color(0xFF858585),
        ),
        IconButton(
          icon: Icon(
              tabsRouter.activeIndex == 0 ? Icons.table_view : Icons.store),
          color: Colors.grey,
          onPressed: () {
            if (tabsRouter.activeIndex == 0) {
              tabsRouter.setActiveIndex(1);
            } else {
              tabsRouter.setActiveIndex(0);
            }
          },
        ),
      ];
}
