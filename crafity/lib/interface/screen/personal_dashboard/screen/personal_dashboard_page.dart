import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/screen/personal_dashboard/screen/personal_profile_page.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';

class PersonalDashboardPage extends StatefulWidget {
  final String userName;
  PersonalDashboardPage({@PathParam('userName') this.userName});

  @override
  _PersonalDashboardPageState createState() => _PersonalDashboardPageState();
}

class _PersonalDashboardPageState extends State<PersonalDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        ActivityRoute(),
        NotifRoute(children: [NotifAppRoute()]),
        messageRoute(),
        SettingsRoute(children: [SettingsMenuRoute()]),
        VoucherRoute(),
      ],
      builder: (ctx, page, anim) => ResponsiveLayout(
        largeScreen: Material(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(flex: 3, child: PersonalProfilePage(ctx: ctx)),
              Flexible(flex: 10, child: page),
            ],
          ),
        ),
        smallScreen: Scaffold(
          backgroundColor: Color(0xFFF9F9F9),
          drawer: Drawer(child: PersonalProfilePage(ctx: ctx)),
          body: page,
        ),
      ),
    );
  }

  PageRouteInfo messageRoute() {
    if (ResponsiveLayout.isLargeScreen(context))
      return MessageRoute(
        children: [DirectMessageRoute(user: 'Rouge_mn')],
      );
    return MessageRoute(
      children: [ContactPersonRoute()],
    );
  }
}
