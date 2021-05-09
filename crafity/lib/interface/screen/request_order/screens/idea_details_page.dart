import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/features/discussion_bar.dart';
import 'package:crafity/interface/screen/request_order/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:crafity/interface/util/utils.dart';

class IdeaDetailsPage extends StatefulWidget {
  final String ideaName;
  const IdeaDetailsPage({@PathParam('ideaName') this.ideaName});

  @override
  _IdeaDetailsPageState createState() => _IdeaDetailsPageState();
}

class _IdeaDetailsPageState extends State<IdeaDetailsPage> {
  Widget photoIdea = Stack(
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
    ],
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Material(
      child: ResponsiveLayout(
        largeScreen: Stack(
          children: <Widget>[
            Positioned(
              width: size.width * .55,
              height: size.height,
              left: 0,
              child: photoIdea,
            ),
            Positioned(
              width: size.width * .54,
              height: size.height,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 22, 18, 16),
                      child: PreviewDetails(),
                    ),
                    Divider(),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            flex: 4,
                            child: DefaultTabController(
                              length: 4,
                              child: Column(
                                children: <Widget>[
                                  Card(
                                    child: TabBar(
                                      indicatorColor: Color(0xFFE36789),
                                      unselectedLabelColor: Color(0xFF858585),
                                      labelColor: Color(0xFFE36789),
                                      tabs: const [
                                        Tab(text: 'Idea'),
                                        Tab(text: 'Participant'),
                                        Tab(text: 'Discuss'),
                                        Tab(text: 'Draft'),
                                      ],
                                      onTap: (idx) {},
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 20,
                                      ),
                                      child: TabBarView(
                                        children: [
                                          IdeaDescription(),
                                          OwnerEntry(),
                                          DiscussionBar(),
                                          IdeaDraft(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          VerticalDivider(),
                          Flexible(flex: 3, child: WorkProgress()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        smallScreen: DefaultTabController(
          length: 5,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: size.height * .4,
                  floating: true,
                  snap: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: photoIdea,
                  ),
                ),
                SliverPersistentHeader(
                  delegate: SliverHeaderDelegate(
                    minHeight: 55,
                    maxHeight: 148,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(18, 20, 18, 0),
                      child: PreviewDetails(),
                    ),
                    collapseChild: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Mafrodd Linoar',
                            style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 15),
                          PreviewDetails.actionBtn()
                        ],
                      ),
                    ),
                  ),
                  pinned: true,
                ),
                SliverPersistentHeader(
                  delegate: SliverHeaderDelegate(
                    minHeight: 50,
                    maxHeight: 50,
                    child: TabBar(
                      isScrollable: true,
                      indicatorColor: Color(0xFFE36789),
                      unselectedLabelColor: Color(0xFF858585),
                      labelColor: Color(0xFFE36789),
                      tabs: const [
                        Tab(text: 'Idea'),
                        Tab(text: 'Participant'),
                        Tab(text: 'Status Work'),
                        Tab(text: 'Discussion'),
                        Tab(text: 'Idea Draft'),
                      ],
                      onTap: (idx) {},
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TabBarView(
                children: [
                  IdeaDescription(),
                  OwnerEntry(),
                  WorkProgress(),
                  DiscussionBar(),
                  IdeaDraft(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
