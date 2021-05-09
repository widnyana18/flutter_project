import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/screen/personal_dashboard/screen/screens.dart';
import 'package:flutter/material.dart';

class DirectMessagePage extends StatelessWidget {
  final String user;
  DirectMessagePage({@PathParam('user') this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sapriadi Ms',
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Color(0xFF858585),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(flex: 5, child: ChatRoomPage.dashChat()),
          Flexible(
            flex: 3,
            child:
                Card(child: ContactPersonPage.contact(context, onTap: () {})),
          ),
        ],
      ),
    );
  }
}
