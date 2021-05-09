import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:crafity/interface/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class PreviewDetails extends StatelessWidget {
  static Widget actionBtn() {
    final List<PopupMenuItem<int>> crudLabel = [
      PopupMenuItem(
        value: 0,
        child: Text('New Requst'),
      ),
      PopupMenuItem(
        value: 1,
        child: Text('Edit'),
      ),
      PopupMenuItem(
        value: 2,
        child: Text('Delete'),
      ),
    ];

    final List<PopupMenuItem<int>> userEvent = [
      PopupMenuItem(
        value: 0,
        child: Text('Bookmark'),
      ),
      PopupMenuItem(
        value: 1,
        child: Text('Share'),
      ),
      PopupMenuItem(
        value: 2,
        child: Text('Report'),
      ),
    ];

    // return Row(
    //   children: [
    //     OutlineButton(
    //       child: Text(
    //         'Disable',
    //       ),
    //       shape: StadiumBorder(),
    //       textColor: Color(0xFFE36789),
    //       color: Color(0xFFE36789),
    //       onPressed: () {},
    //     ),
    //     SizedBox(width: 8),
    //     PopupMenuButton(
    //       itemBuilder: (ctx) => crudLabel,
    //       icon: Icon(Icons.expand_more),
    //       initialValue: -1,
    //     ),
    //   ],
    // );
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) => state.when(
        authenticated: (_) => Row(
          children: [
            OutlinedButton.icon(
              label: Text(
                '271',
                style: TextStyle(color: Color(0xFF858585)),
              ),
              icon: Icon(Icons.thumb_up),
              style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
                primary: Color(0xFF858585),
              ),
              onPressed: () {},
            ),
            SizedBox(width: 8),
            PopupMenuButton(
              itemBuilder: (ctx) => userEvent,
              icon: Icon(Icons.expand_more),
            ),
          ],
        ),
        unauthenticated: () => SizedBox.shrink(),
        uninitialized: () => null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isLarge = ResponsiveLayout.isLargeScreen(context);

    return Flex(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: isLarge ? Axis.horizontal : Axis.vertical,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mafrodd Linoar',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  'Alex Ferguson',
                  style: TextStyle(fontSize: 15, color: Color(0xFF9A9A9A)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF858585),
                    radius: 3,
                  ),
                ),
                Text(
                  '5 Owners',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF858585),
                    radius: 3,
                  ),
                ),
                Text(
                  '12 Orders',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: <Widget>[
                Text(
                  '11/22/2017 - 05/11/2020',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(width: 15),
                Text(
                  'Transaction',
                  style: TextStyle(color: Color(0xFF6794E3)),
                ),
              ],
            )
          ],
        ),
        actionBtn(),
      ],
    );
  }

  List<String> statusList = ['Empty', 'Working', 'Transaction', 'Closed'];
}

class ForumStatus {
  ForumStatus({this.label, this.color});

  final String label;
  final int color;
}
