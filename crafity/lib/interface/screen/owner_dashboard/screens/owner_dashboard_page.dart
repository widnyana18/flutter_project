import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/screen/owner_dashboard/screens/screens.dart';
import 'package:crafity/interface/screen/owner_dashboard/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:crafity/interface/util/utils.dart';
import 'package:crafity/interface/features/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OwnerDashboardPage extends StatelessWidget {
  OwnerDashboardPage({@PathParam('ownerName') this.ownerName});
  final String ownerName;

  @override
  Widget build(BuildContext context) {
    final state = context.select((AuthenticationBloc bloc) => bloc.state);

    return AutoTabsRouter(
      routes: [ProductGridRoute(), CollectionGridRoute(), VoucherGridRoute()],
      builder: (ctx, view, anim) => DefaultTabController(
        length: 3,
        initialIndex: ctx.tabsRouter.activeIndex,
        child: ResponsiveLayout(
          largeScreen: Scaffold(
            backgroundColor: Color(0xFFF9F9F9),
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: SearchBar(popupData: filterList),
              actions: state is Authenticated ? dashboardFeature : null,
            ),
            floatingActionButton: FloatingBtn(),
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  flex: 4,
                  child: Card(
                    elevation: 18,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          OwnerProfile(),
                          CompanyDesc(),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 12,
                  child: Column(
                    children: [
                      tabBarItem(ctx.tabsRouter),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(18),
                        child: view,
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          smallScreen: Scaffold(
            floatingActionButton: FloatingBtn(),
            body: NestedScrollView(
              headerSliverBuilder: (context, _) => [
                SliverAppBar(
                  expandedHeight: 580,
                  backgroundColor: Colors.white,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Roland Camel',
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Owner Paramecium',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Color(0xFF858585),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    background: OwnerProfile(
                      actionFeatures: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: dashboardFeature,
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: CompanyDesc()),
                SliverPadding(
                  padding: EdgeInsets.only(top: 15),
                  sliver: SliverAppBar(
                    title: SearchBar(
                      popupData: filterList,
                    ),
                    floating: true,
                    snap: true,
                    backgroundColor: Colors.white,
                  ),
                ),
                SliverPersistentHeader(
                  delegate: SliverHeaderDelegate(
                    minHeight: 50,
                    maxHeight: 50,
                    child: tabBarItem(ctx.tabsRouter),
                  ),
                  pinned: true,
                ),
              ],
              body: Material(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: view,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget tabBarItem(TabsRouter tabsRouter) => TabBar(
        indicatorColor: Color(0xFFE36789),
        unselectedLabelColor: Color(0xFF858585),
        labelColor: Color(0xFFE36789),
        tabs: [
          Tab(text: 'Item'),
          Tab(text: 'Collection'),
          Tab(text: 'Voucher'),
        ],
        onTap: (idx) {
          tabsRouter.setActiveIndex(idx);
        },
      );

  List<Widget> dashboardFeature = [
    OutlinedButton.icon(
      icon: Icon(
        Icons.subscriptions,
        color: Color(0xFF858585),
      ),
      label: Text('Subscribe'),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side: BorderSide(color: Color(0xFF858585)),
      ),
      onPressed: () {},
    ),
    PopupMenuButton(
      icon: Icon(Icons.expand_more, color: Color(0xFF858585)),
      itemBuilder: (_) {
        return OwnerDashboardPage.popupList.map((item) {
          return PopupMenuItem(
            child: Text(
              item,
              style: TextStyle(color: Color(0xFF858585)),
            ),
            value: item,
          );
        }).toList();
      },
      // initialValue: initValue,
      onSelected: (value) {},
    ),
  ];

  List<String> filterList = [
    'A-Z',
    'Top Rated',
    'Best Selling',
  ];

  static List<String> popupList = [
    'Share',
    'Subcriptions',
    'Req Project',
    'Personal Chat',
  ];
}
