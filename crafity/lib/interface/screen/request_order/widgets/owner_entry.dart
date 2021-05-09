import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OwnerEntry extends StatefulWidget {
  const OwnerEntry({this.isAdmin = false});
  final bool isAdmin;

  @override
  _OwnerEntryState createState() => _OwnerEntryState();
}

class _OwnerEntryState extends State<OwnerEntry> {
  Widget ownerTile({bool useTrailing = false}) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('person.jpg'),
            radius: 16,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          child: InkWell(
                            onTap: _goToOwnerPage,
                            child: Text(
                              'Macao Minaco',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '02/18/2019',
                          style: TextStyle(
                            color: Color(0xFF858585),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Offstage(
                      offstage: !useTrailing,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.remove_circle),
                            iconSize: 15,
                            color: Color(0xFFF66C6C),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.check_circle),
                            iconSize: 15,
                            color: Color(0xFF4EE3B6),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Text(
                    'Be Yourself and Never Surender. lmao I Joke to You theres lot more information'),
              ],
            ),
          ),
        ],
      );

  void _goToOwnerPage() {
    context.router.root.push(OwnerDashboardRoute(ownerName: 'rockin_roc'));
  }

  Widget get simpleWidget => ListView.builder(
        itemCount: 4,
        itemBuilder: (ctx, idx) {
          return Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: ownerTile(),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) => state.when(
        authenticated: (_) {
          if (widget.isAdmin) {
            return Column(
              children: [
                ownerTile(useTrailing: true),
                Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (ctx, idx) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: ownerTile(),
                      );
                    },
                  ),
                ),
              ],
            );
          }
          return simpleWidget;
        },
        unauthenticated: () => simpleWidget,
        uninitialized: () => null,
      ),
    );
  }
}
