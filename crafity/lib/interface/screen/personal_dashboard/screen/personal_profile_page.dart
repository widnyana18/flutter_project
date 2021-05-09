import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:crafity/interface/features/widgets.dart';

class PersonalProfilePage extends StatefulWidget {
  const PersonalProfilePage({this.ctx});
  final BuildContext ctx;

  @override
  _PersonalProfilePageState createState() => _PersonalProfilePageState();
}

class _PersonalProfilePageState extends State<PersonalProfilePage> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthenticationBloc>().state;
    return Card(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: state.maybeMap(
                      authenticated: (user) =>
                          NetworkImage(user.dataUser.photo.getOrCrash()),
                      orElse: () => null,
                    ),
                    radius: 60,
                    child: Align(
                      alignment: Alignment(.8, .8),
                      child: CircleAvatar(
                        radius: 10,
                        child: Icon(
                          Icons.verified_user,
                          size: 12,
                          color: Color(0xFFDFDFDF),
                        ),
                        backgroundColor: Color(0xFF8174F2),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          state.maybeMap(
                            authenticated: (user) =>
                                user.dataUser.name.getOrCrash(),
                            orElse: () => null,
                          ),
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      IconButton(
                        icon: Icon(Icons.edit),
                        iconSize: 16,
                        onPressed: () {},
                        color: Color(0xFF858585),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Color(0xFFC84C6E),
                          shape: StadiumBorder(),
                          padding: EdgeInsets.symmetric(horizontal: 25),
                        ),
                        child: Text(
                          'Show Card',
                          style: TextStyle(
                            color: Color(0xFFC84C6E),
                          ),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(width: 12),
                      IconButton(
                        icon: Icon(Icons.add_circle_outline),
                        onPressed: () {},
                        color: Color(0xFF858585),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Column(
              children: List.generate(
                menu.length,
                (idx) => ListTile(
                    selected: idx == context.tabsRouter.activeIndex,
                    selectedTileColor: Color(0xFFC84C6E),
                    leading: Icon(
                      menu[idx].icon,
                      color: Color(0xFF858585),
                    ),
                    title: Text(
                      menu[idx].label,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: idx == context.tabsRouter.activeIndex
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    trailing: menu[idx].notifSign != 0
                        ? CircleAvatar(
                            backgroundColor: Color(0xFFF6B16C),
                            radius: 8,
                            child: Text(
                              menu[idx].notifSign.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          )
                        : null,
                    onTap: () {
                      // ctx.tabsRouter
                      //   ..innerRouterOf(PersonalDashboardRoute.name)
                      //   ..setActiveIndex(idx);
                      widget.ctx.tabsRouter.setActiveIndex(idx);
                    }),
              ).toList(),
            ),
            Padding(
              padding: EdgeInsets.all(18),
              child: GradientButton(
                text: 'Logout',
                onPressed: () {
                  context.read<AuthenticationBloc>().add(SignOut());
                  context.router.root.replaceAll([SplashRoute()]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<MenuProfileEntity> menu = [
    MenuProfileEntity(
      icon: Icons.local_activity,
      label: 'Activity',
      notifSign: 4,
    ),
    MenuProfileEntity(
      icon: Icons.notifications,
      label: 'Notification',
      notifSign: 2,
    ),
    MenuProfileEntity(
      icon: Icons.chat,
      label: 'Personal Chat',
      notifSign: 8,
    ),
    MenuProfileEntity(
      icon: Icons.settings,
      label: 'Settings',
      notifSign: 0,
    ),
    MenuProfileEntity(
      icon: Icons.confirmation_number,
      label: 'Voucher',
      notifSign: 1,
    ),
  ];
}

class MenuProfileEntity {
  MenuProfileEntity({this.icon, this.label, this.notifSign});

  final IconData icon;
  final String label;
  final int notifSign;
}
