import 'package:crafity/interface/features/button.dart';
import 'package:crafity/interface/screen/catalog_details/widget/widgets.dart';
import 'package:flutter/material.dart';

import 'package:crafity/interface/util/utils.dart';

class DetailsBody extends StatefulWidget {
  DetailsBody({this.detailsDesc});
  final Widget detailsDesc;

  @override
  _DetailsBodyState createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: FloatingBtn(),
      body: ResponsiveLayout(
        largeScreen: Stack(
          children: <Widget>[
            Positioned(
              width: size.width * .55,
              height: size.height,
              left: 0,
              child: ModelProduct(),
            ),
            Positioned(
              width: size.width * .5,
              height: size.height,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(40)),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(22, 25, 20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mafrodd Linoar',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          HeadDetails(),
                        ],
                      ),
                    ),
                    Divider(),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(25, 20, 0, 20),
                              child: Column(
                                children: [
                                  SingleChildScrollView(
                                    child: widget.detailsDesc,
                                  ),
                                  SizedBox(height: 15),
                                  reviewLiteBar,
                                ],
                              ),
                            ),
                          ),
                          VerticalDivider(),
                          Flexible(
                            child: CustomScrollView(
                              shrinkWrap: true,
                              slivers: <Widget>[
                                SimilarProductEntry.role(itemList),
                                SimilarProductEntry(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        smallScreen: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: size.height * .8,
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  background: ModelProduct(),
                  centerTitle: true,
                  title: ModelProduct.productCounter(),
                ),
                pinned: true,
              ),
            ];
          },
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Text(
                    'Mafrodd Linoar',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverPadding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                      sliver: SliverToBoxAdapter(
                        child: Column(
                          children: [
                            HeadDetails(),
                            IconButton(
                              icon: Icon(Icons.expand_more),
                              color: Colors.grey,
                              onPressed: () {},
                            ),
                            SizedBox(height: 14),
                            Offstage(
                              offstage: true,
                              child: widget.detailsDesc,
                            ),
                            SizedBox(height: 10),
                            reviewLiteBar,
                          ],
                        ),
                      ),
                    ),
                    SimilarProductEntry.role(itemList),
                    SimilarProductEntry(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get reviewLiteBar => InkWell(
        onTap: _showReviewBar,
        child: Column(
          children: [
            ReviewProduct.header(),
            Divider(),
            ReviewProduct.reviewUser(
              reviewData: ReviewTile(
                photo: 'person.jpg',
                name: 'Falcaou Ray',
                date: '3 days ago',
                msg: 'you interest, check details to get more information.',
                rate: 4.4,
              ),
              isPersonalMsg: true,
            ),
          ],
        ),
      );

  void _showReviewBar() {
    final size = MediaQuery.of(context).size;
    if (ResponsiveLayout.isLargeScreen(context)) {
      showDialog(
        context: context,
        routeSettings: RouteSettings(name: '/product/Owl_parry/details/review'),
        builder: (context) => Dialog(
          child: SizedBox(
            width: size.width * .4,
            child: ReviewProduct(),
          ),
        ),
      );
    } else {
      showModalBottomSheet(
        useRootNavigator: true,
        isScrollControlled: true,
        context: context,
        routeSettings: RouteSettings(name: '/product/Owl_parry/details/review'),
        backgroundColor: Colors.white,
        builder: (context) => ReviewProduct(),
      );
    }
  }

  List<String> itemList = ['Similar', 'Daniel Conte', 'Perfume', 'Young'];
}
