import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class MobileBottomNavbar extends StatefulWidget {
  @override
  _MobileBottomNavbarState createState() => _MobileBottomNavbarState();
}

class _MobileBottomNavbarState extends State<MobileBottomNavbar> {
  AuthenticationState state;

  @override
  Widget build(BuildContext context) {
    state = context.watch<AuthenticationBloc>().state;

    return BottomNavigationBar(
      items: state.maybeWhen(
        authenticated: (user) => fullNavItem(user.photo.getOrCrash()),
        orElse: () => null,
      ),
      onTap: _onItemTapped,
      currentIndex: context.tabsRouter.activeIndex,
      selectedItemColor: Color(0xFFE36789),
      unselectedItemColor: Color(0xFF858585),
    );
  }

  List<BottomNavigationBarItem> fullNavItem(String photo) => [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'Browse',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.lightbulb_outline),
          label: 'Idea',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_note),
          label: 'Event',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(backgroundImage: NetworkImage(photo)),
          label: '',
        ),
      ];

  void _onItemTapped(int index) {
    context.tabsRouter.setActiveIndex(index);
  }
}
