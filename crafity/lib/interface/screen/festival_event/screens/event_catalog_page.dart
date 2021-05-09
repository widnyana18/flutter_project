import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/features/widgets.dart';
import 'package:crafity/interface/screen/festival_event/widgets/widgets.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';

class EventCatalogPage extends StatelessWidget {
  final String search;
  EventCatalogPage({@PathParam('search') this.search});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text(
                'Event',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans',
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              SearchBar(),
              Spacer(),
            ],
          ),
          actions: [sortingGridItem],
        ),
        floatingActionButton: FloatingBtn(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: EventCarousel(),
            ),
            SliverPadding(
              padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Indonesia',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(20),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 240,
                  childAspectRatio: .7,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                delegate: SliverChildBuilderDelegate(
                  (ctx, idx) => EventCard(),
                  childCount: 5,
                ),
              ),
            ),
          ],
        ),
      ),
      smallScreen: Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: SearchBar(),
          actions: [sortingGridItem],
        ),
        floatingActionButton: FloatingBtn(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: EventCarousel(),
            ),
            SliverPadding(
              padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Indonesia',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(20),
              sliver: SliverFixedExtentList(
                itemExtent: 160,
                delegate: SliverChildBuilderDelegate(
                  (ctx, idx) => EventCard(horizontalView: true),
                  childCount: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get sortingGridItem => PopupMenuButton(
        icon: Icon(
          Icons.sort,
          color: Color(0xFF858585),
        ),
        itemBuilder: (_) {
          return sortingItem.map((item) {
            if (sortingItem.indexOf(item) == 0) {
              return PopupMenuItem(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: 0,
                    items: country
                        .map(
                          (data) => DropdownMenuItem(
                            child: Text(data),
                            value: country.indexOf(data),
                          ),
                        )
                        .toList(),
                    onChanged: (_) {},
                  ),
                ),
                value: 0,
              );
            }
            return PopupMenuItem(
              child: Text(item),
              value: sortingItem.indexOf(item),
            );
          }).toList();
        },
        // initialValue: initValue,
        onSelected: (value) {},
      );

  List<String> country = [
    'Country',
    'Indonesia',
    'Japan',
    'New Zealand',
    'India'
  ];
  List<String> sortingItem = ['', 'Big Event', 'Popular', 'Great Reward'];
}
