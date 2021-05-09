import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/blocs.dart';
import 'package:crafity/infrastructure/user/user_repository.dart';
import 'package:crafity/interface/screen/auth_page/auth_account_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LinearNavbarWeb extends StatefulWidget {
  @override
  _LinearNavbarWebState createState() => _LinearNavbarWebState();
}

class _LinearNavbarWebState extends State<LinearNavbarWeb> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthenticationBloc>().state;

    return NavigationRail(
      groupAlignment: 0,
      elevation: 4,
      destinations: state.maybeWhen(
        authenticated: (user) => userNavMenu(user.photo.getOrCrash()),
        unauthenticated: () => guestNavMenu,
        orElse: () => null,
      ),
      labelType: NavigationRailLabelType.selected,
      selectedIndex: context.tabsRouter.activeIndex,
      selectedIconTheme: IconThemeData(color: Color(0xFFE36789)),
      selectedLabelTextStyle: TextStyle(
        color: Color(0xFFE36789),
        fontSize: 12,
      ),
      backgroundColor: Colors.white,
      onDestinationSelected: (int index) {
        if (state is! Authenticated && index == 2) {
          showDialog(
            context: context,
            routeSettings: RouteSettings(name: '/login/'),
            builder: (_) => BlocProvider<UserBloc>(
              create: (_) => UserBloc(context.read<UserRepository>()),
              child: LoginPage(),
            ),
          );
        } else {
          context.tabsRouter.setActiveIndex(index);
        }
      },
    );
  }

  List<NavigationRailDestination> userNavMenu(String photo) => [
        NavigationRailDestination(
          icon: ImageIcon(AssetImage('app_logo.png')),
          label: Text(''),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.store),
          label: Text('Browse'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.lightbulb_outline),
          label: Text('Idea'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.event_note),
          label: Text('Event'),
        ),
        NavigationRailDestination(
          icon: CircleAvatar(backgroundImage: NetworkImage(photo)),
          label: Text(''),
        ),
      ];

  List<NavigationRailDestination> get guestNavMenu => [
        NavigationRailDestination(
          icon: ImageIcon(AssetImage('app_logo.png')),
          label: Text(''),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.store),
          label: Text('Browse'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.account_circle),
          label: Text(''),
        ),
      ];
}
