import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCard extends StatefulWidget {
  const OrderCard({this.horizontalView = false, this.canDeleteCard = false});

  final bool horizontalView;
  final bool canDeleteCard;

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _openDetails,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Flex(
          direction: widget.horizontalView ? Axis.horizontal : Axis.vertical,
          children: <Widget>[
            AspectRatio(
              aspectRatio: widget.horizontalView ? 1 : 1.2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('perfume9.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Bleu Da Chennal',
                            maxLines: 1,
                            softWrap: true,
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  'Runner Marcopolo',
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  style: TextStyle(color: Color(0xFF858585)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 2,
                                ),
                              ),
                              Text(
                                '2k',
                                style: TextStyle(color: Color(0xFF858585)),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.thumb_up,
                                color: Color(0xFF858585),
                                size: 14,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: <Widget>[
                              Text(
                                '#Handycraft',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF8174F2),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 2,
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  '02/14/2020',
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    BlocBuilder<AuthenticationBloc, AuthenticationState>(
                      builder: (context, state) => state.when(
                        authenticated: (_) => PopupMenuButton(
                          child: SizedBox(
                            width: 25,
                            child: Icon(
                              Icons.more_vert,
                              color: Color(0xFF858585),
                            ),
                          ),
                          itemBuilder: (_) {
                            if (widget.canDeleteCard) {
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
                          onSelected: (int value) {},
                        ),
                        unauthenticated: () => SizedBox.shrink(),
                        uninitialized: () => null,
                      ),
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

  void _openDetails() {
    context.router.root.push(IdeaDetailsRoute(ideaName: 'simon_cartoon'));
  }

  List<String> keepAction = ['Share', 'Delete'];

  List<String> saleAction = ['Share', 'Bookmark', 'Report', 'Not Interested'];
}
