import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkProgress extends StatelessWidget {
  Widget workResult() {
    final Widget creationAlbum = Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.25,
          child: PageView.builder(
            itemBuilder: (ctx, idx) => Container(
              padding: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('perfume9.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            itemCount: 2,
          ),
        ),
        Positioned(
          bottom: 12,
          child: Row(
            children: List.generate(
              3,
              (idx) => Padding(
                padding: EdgeInsets.all(3),
                child: CircleAvatar(
                  backgroundColor:
                      idx == 0 ? Color(0xFFE3E3E3) : Colors.white38,
                  radius: 5,
                ),
              ),
            ),
          ),
        ),
      ],
    );

    final List<String> prodEventItem = ['Share', 'Bookmark', 'Report'];

    return ExpansionPanelList(
      expandedHeaderPadding: EdgeInsets.zero,
      dividerColor: Colors.transparent,
      children: List.generate(
        2,
        (idx) => ExpansionPanel(
          isExpanded: true,
          headerBuilder: (ctx, _) => ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('person.jpg'),
              radius: 16,
            ),
            title: Text(
              'Macao Minaco',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Row(
              children: <Widget>[
                Text(
                  '3 Orders',
                  style: TextStyle(fontSize: 12, color: Color(0xFFE36789)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 2,
                  ),
                ),
                Text(
                  '2 weeks ago',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            onTap: () {},
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                creationAlbum,
                SizedBox(height: 18),
                Text(
                    'you interest, check details to get more information. you interest, check details to get more information'),
                SizedBox(height: 6),
                BlocBuilder<AuthenticationBloc, AuthenticationState>(
                  builder: (context, state) => state.when(
                    authenticated: (_) => Row(
                      children: <Widget>[
                        Text(
                          '03',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF858585),
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              constraints:
                                  BoxConstraints(maxWidth: 15, maxHeight: 15),
                              padding: EdgeInsets.zero,
                              icon: Icon(Icons.add),
                              iconSize: 14,
                              onPressed: () {},
                            ),
                            IconButton(
                              constraints:
                                  BoxConstraints(maxWidth: 15, maxHeight: 15),
                              padding: EdgeInsets.zero,
                              icon: Icon(Icons.minimize),
                              iconSize: 14,
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(width: 15),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            primary: Color(0xFF858585),
                          ),
                          icon: Icon(
                            Icons.add_shopping_cart,
                            color: Color(0xFFF1F1F1),
                            size: 15,
                          ),
                          label: Text(
                            '\$36 | Add Cart',
                            style: TextStyle(color: Color(0xFFF1F1F1)),
                          ),
                          onPressed: () {},
                        ),
                        PopupMenuButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Color(0xFF858585),
                          ),
                          itemBuilder: (_) {
                            return prodEventItem.map((item) {
                              return PopupMenuItem(
                                child: Text(
                                  item,
                                  style: TextStyle(
                                    color: Color(0xFF858585),
                                  ),
                                ),
                                value: prodEventItem.indexOf(item),
                              );
                            }).toList();
                          },
                        ),
                      ],
                    ),
                    unauthenticated: () => SizedBox.shrink(),
                    uninitialized: () => null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          floating: true,
          title: Text(
            'Work Status',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        SliverAppBar(
          backgroundColor: Colors.white,
          pinned: true,
          leading: Icon(
            Icons.shutter_speed,
            color: Color(0xFFF6B16C),
          ),
          title: Text(
            'COMMING SOON',
            style: TextStyle(fontSize: 16, color: Color(0xFFF6B16C)),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (ctx, idx) => ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('person.jpg'),
                radius: 16,
              ),
              title: Text(
                'Macao Minaco',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {},
            ),
            childCount: 3,
          ),
        ),
        SliverAppBar(
          backgroundColor: Colors.white,
          pinned: true,
          leading: Icon(
            Icons.done,
            color: Color(0xFF6794E3),
          ),
          title: Text(
            'FINISH',
            style: TextStyle(fontSize: 16, color: Color(0xFF6794E3)),
          ),
        ),
        SliverToBoxAdapter(child: workResult()),
      ],
    );
  }
}
