import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:flutter/material.dart';

import 'package:crafity/interface/features/widgets.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';

class NavHandlingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        HomeRoute(),
        BrowseRoute(children: [CatalogGridRoute(browseResult: '')]),
        RequestOrderRoute(children: [IdeaGridRoute()]),
        EventCatalogRoute(search: ''),
        PersonalDashboardRoute(userName: 'maca_keley'),
      ],
      builder: (ctx, page, animation) => ResponsiveLayout(
        largeScreen: Scaffold(
          backgroundColor: Color(0xFFF9F9F9),
          // persistentFooterButtons: [CalculateProductBar()],
          body: Row(
            children: [
              LinearNavbarWeb(),
              Flexible(child: page),
            ],
          ),
        ),
        smallScreen: Scaffold(
          backgroundColor: Color(0xFFF9F9F9),
          bottomNavigationBar: MobileBottomNavbar(),
          // persistentFooterButtons: [CalculateProductBar()],
          body: page,
        ),
      ),
    );
  }
}
