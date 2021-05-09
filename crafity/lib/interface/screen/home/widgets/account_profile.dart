import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthenticationBloc>().state;
    return LimitedBox(
      maxWidth: 235,
      child: Card(
        color: Color(0xFFF3F3F3),
        shape: StadiumBorder(),
        child: ListTile(
          onTap: () {
            context.tabsRouter.setActiveIndex(4);
          },
          leading: CircleAvatar(
            backgroundImage: state.maybeMap(
              authenticated: (user) =>
                  NetworkImage(user.dataUser.photo.getOrCrash()),
              orElse: () => null,
            ),
          ),
          title: Text(
            state.maybeMap(
              authenticated: (user) => user.dataUser.name.getOrCrash(),
              orElse: () => null,
            ),
            overflow: TextOverflow.fade,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          trailing: CircleAvatar(
            backgroundColor: Color(0xFFF6B16C),
            radius: 6,
          ),
        ),
      ),
    );
  }
}
