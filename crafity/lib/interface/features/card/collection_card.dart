import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/authentication/authentication_bloc.dart';

import 'package:crafity/interface/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollectionCard extends StatefulWidget {
  CollectionCard({
    this.horizontalView = false,
    this.canEditCard = false,
  });

  final bool horizontalView;
  final bool canEditCard;

  @override
  _CollectionCardState createState() => _CollectionCardState();
}

class _CollectionCardState extends State<CollectionCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onDetailBtn,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Flex(
          direction: widget.horizontalView ? Axis.horizontal : Axis.vertical,
          children: <Widget>[
            AspectRatio(
              aspectRatio: widget.horizontalView ? .9 : 1.2,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView.builder(
                    itemCount: 2,
                    itemBuilder: (ctx, idx) {
                      return Image.asset(
                        'assets/perfume9.jpg',
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  Positioned(
                    bottom: 12,
                    child: Row(
                      children: List.generate(
                        3,
                        (idx) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFFCFCFCF).withOpacity(.5),
                            radius: 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Bleu Da Chennal',
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: InkWell(
                            onTap: _pushToOwnerHome,
                            child: Text(
                              'Runner Marcopolo',
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                              style: TextStyle(color: Color(0xFFE36789)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 2,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text('7.4'),
                            Icon(Icons.star, color: Colors.grey, size: 12),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            'Bali, Indonesia',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Color(0xFF6794E3)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 2,
                          ),
                        ),
                        Text(
                          '02/19/2019',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    BlocBuilder<AuthenticationBloc, AuthenticationState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          authenticated: (_) => Row(
                            children: [
                              OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    side: BorderSide(color: Color(0xFF858585)),
                                  ),
                                ),
                                icon: Icon(
                                  Icons.add_shopping_cart,
                                  color: Color(0xFF858585),
                                  size: 15,
                                ),
                                label: Text(
                                  '\$87',
                                  style: TextStyle(color: Color(0xFF858585)),
                                ),
                                onPressed: () {},
                              ),
                              Offstage(
                                offstage: widget.horizontalView,
                                child: PopupMenuButton(
                                  icon: Icon(
                                    Icons.more_vert,
                                    color: Color(0xFF858585),
                                  ),
                                  itemBuilder: (_) {
                                    if (widget.canEditCard) {
                                      return keepAction.map((item) {
                                        return PopupMenuItem(
                                          child: Text(item),
                                          value: saleAction.indexOf(item),
                                        );
                                      }).toList();
                                    }
                                    return saleAction.map((item) {
                                      return PopupMenuItem(
                                        child: Text(item),
                                        value: saleAction.indexOf(item),
                                      );
                                    }).toList();
                                  },
                                  // initialValue: initValue,
                                  onSelected: (int value) {
                                    // setState(() => initValue = value);
                                  },
                                ),
                              ),
                            ],
                          ),
                          unauthenticated: () => SizedBox.shrink(),
                          orElse: () => null,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onDetailBtn() {
    context.router.root.push(CollectionDetailsRoute(collName: 'ruin_minarck'));
  }

  void _pushToOwnerHome() {
    context.router.root.push(OwnerDashboardRoute(ownerName: 'Skull_marr'));
  }

  List<String> keepAction = ['Share', 'Delete'];

  List<String> saleAction = ['Share', 'Bookmark', 'Report', 'Not Interested'];
}
