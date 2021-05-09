import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:crafity/interface/features/widgets.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/screen/request_order/screens/add_request_page.dart';
import 'package:crafity/interface/screen/request_order/widgets/order_card.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:crafity/interface/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IdeaGridPage extends StatefulWidget {
  @override
  _IdeaGridPageState createState() => _IdeaGridPageState();
}

class _IdeaGridPageState extends State<IdeaGridPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: SearchBar(popupData: filter),
          actions: <Widget>[addRequestBtn],
        ),
        floatingActionButton: FloatingBtn(),
        body: Padding(
          padding: EdgeInsets.all(18),
          child: requestView,
        ),
      ),
      smallScreen: Scaffold(
        floatingActionButton: FloatingBtn(),
        body: NestedScrollView(
          headerSliverBuilder: (ctx, _) => [
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate(
                minHeight: 57,
                maxHeight: 60,
                child: Text(
                  'Request Order',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                collapseChild: SearchBar(
                  popupData: filter,
                  otherAction: [addRequestBtn],
                ),
              ),
            ),
          ],
          body: Padding(
            padding: EdgeInsets.all(18),
            child: requestView,
          ),
        ),
      ),
    );
  }

  Widget get addRequestBtn =>
      BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) => state.when(
          authenticated: (_) => IconButton(
            onPressed: _showCreateIdeaForm,
            icon: Icon(Icons.note_add),
            color: Color(0xFF858585),
          ),
          unauthenticated: () => SizedBox.shrink(),
          uninitialized: () => null,
        ),
      );

  void _showCreateIdeaForm() {
    if (ResponsiveLayout.isLargeScreen(context)) {
      showDialog(
        context: context,
        routeSettings: RouteSettings(name: '/request/create'),
        builder: (_) => Dialog(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .3,
            child: AddRequestPage(),
          ),
        ),
      );
    } else {
      context.router.push(AddRequestRoute());
    }
  }

  Widget requestView = GridView.builder(
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 230,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      childAspectRatio: .7,
    ),
    itemBuilder: (BuildContext context, int index) {
      return OrderCard();
    },
    itemCount: 6,
  );

  List<String> filter = [
    'Popular',
    'New Request',
    'Active Request',
    'Most Enthusiasts',
    'My Request',
    'All',
  ];
}
