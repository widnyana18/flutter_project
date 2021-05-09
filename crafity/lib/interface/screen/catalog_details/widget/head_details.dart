import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeadDetails extends StatefulWidget {
  @override
  _HeadDetailsState createState() => _HeadDetailsState();
}

class _HeadDetailsState extends State<HeadDetails> {
  Widget menuDetails(bool isLarge) {
    List<ListTile> productMenuList = [
      ListTile(
        leading: Icon(Icons.bookmark),
        title: Text('Bookmark'),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.share),
        title: Text('Share'),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.report),
        title: Text('Report'),
        onTap: () {},
      ),
    ];

    return Flex(
      direction: isLarge ? Axis.vertical : Axis.horizontal,
      crossAxisAlignment:
          isLarge ? CrossAxisAlignment.end : CrossAxisAlignment.center,
      children: [
        Text(
          '1450 sold',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: CircleAvatar(
                backgroundColor: Color(0xFF858585),
                radius: 3,
              ),
            ),
            Text('20/08/2018'),
            PopupMenuButton(
              icon: Icon(
                Icons.more_horiz,
                size: 16,
                color: Color(0xFF858585),
              ),
              itemBuilder: (ctx) {
                return productMenuList.map((item) {
                  return PopupMenuItem(
                    child: item,
                    value: productMenuList.indexOf(item),
                  );
                }).toList();
              },
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final isLarge = ResponsiveLayout.isLargeScreen(context);

    return Flex(
      direction: isLarge ? Axis.horizontal : Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment:
          isLarge ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 260,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('person.jpg'),
            ),
            title: Text(
              'Daniel Mirowlo',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              'Bali, Indonesia',
              style: TextStyle(color: Color(0xFF6794E3)),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.person_add,
              ),
              iconSize: 16,
              color: Color(0xFF858585),
              onPressed: () {},
            ),
            onTap: goToOwnerPage,
          ),
        ),
        SizedBox(width: 20),
        BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) => state.maybeWhen(
            authenticated: (_) => menuDetails(isLarge),
            unauthenticated: () => SizedBox.shrink(),
            orElse: () => null,
          ),
        ),
      ],
    );
  }

  void goToOwnerPage() {
    context.router.root.push(OwnerDashboardRoute(ownerName: 'Maki_miru'));
  }
}
