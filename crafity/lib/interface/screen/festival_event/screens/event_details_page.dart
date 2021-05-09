import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/features/widgets.dart';
import 'package:crafity/interface/screen/festival_event/widgets/widgets.dart';
import 'package:crafity/interface/util/utils.dart';
import 'package:flutter/material.dart';

class EventDetailsPage extends StatelessWidget {
  EventDetailsPage({@PathParam('eventName') this.eventName});
  final String eventName;

  Widget get photoEvent => Stack(
        alignment: Alignment.center,
        children: <Widget>[
          InteractiveViewer(
            child: PageView.builder(
              itemBuilder: (ctx, idx) => Image.asset(
                'perfume9.jpg',
                fit: BoxFit.cover,
              ),
              itemCount: 2,
            ),
          ),
          Positioned(
            top: 15,
            child: Row(
              children: List.generate(
                4,
                (idx) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.white30,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: IconButton(
              icon: Icon(Icons.ondemand_video, size: 20),
              color: Color(0xFFD5D5D5),
              onPressed: () {},
            ),
          ),
          Positioned(
            bottom: 12,
            child: cartBtn,
          ),
        ],
      );

  Widget cartBtn = TextButton.icon(
    icon: Icon(
      Icons.add_shopping_cart,
      color: Color(0xFFC2C2C2),
    ),
    label: Text(
      '\$76',
      style: TextStyle(color: Color(0xFFC2C2C2), fontSize: 20),
    ),
    style: TextButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 25),
      backgroundColor: Color(0xFF565656).withOpacity(.5),
      shape: StadiumBorder(),
    ),
    onPressed: () {},
  );

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
              child: photoEvent,
            ),
            Positioned(
              width: size.width * .54,
              height: size.height,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Mafrodd Linoar Making Me Cofused Helloo Pythin Rouge Event',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: DefaultTabController(
                              length: 3,
                              child: Column(
                                children: <Widget>[
                                  EventHeader(),
                                  Card(
                                    child: TabBar(
                                      indicatorColor: Color(0xFFE36789),
                                      unselectedLabelColor: Color(0xFF858585),
                                      labelColor: Color(0xFFE36789),
                                      tabs: [
                                        Tab(text: 'Description'),
                                        Tab(text: 'Schedule'),
                                        Tab(text: 'Comment'),
                                      ],
                                      onTap: (idx) {},
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      child: TabBarView(
                                        children: [
                                          EventDesc(),
                                          EventSchedule(),
                                          DiscussionBar(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          VerticalDivider(),
                          Flexible(child: SimilarEventList()),
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
              SliverPersistentHeader(
                delegate: SliverHeaderDelegate(
                  maxHeight: size.height * .37,
                  minHeight: 40,
                  child: photoEvent,
                  collapseChild: Center(child: cartBtn),
                  bgColor: Colors.grey,
                ),
                pinned: true,
              ),
              SliverPadding(
                padding: EdgeInsets.all(20),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Text(
                        'Mafrodd Linoar Making Me Cofused Helloo Pythin Rouge Event',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      EventHeader(),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: DefaultTabController(
            length: 4,
            child: Column(
              children: <Widget>[
                SizedBox(height: 40),
                Card(
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: Color(0xFFE36789),
                    unselectedLabelColor: Color(0xFF858585),
                    labelColor: Color(0xFFE36789),
                    tabs: [
                      Tab(text: 'Description'),
                      Tab(text: 'Schedule'),
                      Tab(text: 'Comment'),
                      Tab(text: 'Event Draft'),
                    ],
                    onTap: (idx) {},
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: TabBarView(
                      children: [
                        EventDesc(),
                        EventSchedule(),
                        DiscussionBar(),
                        SimilarEventList(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
