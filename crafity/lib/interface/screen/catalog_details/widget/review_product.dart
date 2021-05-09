import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:crafity/interface/util/sliver_header_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ReviewProduct extends StatelessWidget {
  static Widget header() => Row(
        children: <Widget>[
          Text(
            'Review',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          Text(
            '3.8',
            style: TextStyle(color: Color(0xFF858585), fontSize: 15),
          ),
          Icon(
            Icons.emoji_emotions,
            size: 15,
            color: Color(0xFF858585),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 3,
              backgroundColor: Color(0xFF858585),
            ),
          ),
          Text(
            '387',
            style: TextStyle(color: Color(0xFF858585), fontSize: 15),
          ),
          Icon(
            Icons.rate_review,
            size: 15,
            color: Color(0xFF858585),
          ),
        ],
      );

  static Widget commentField() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/person.jpg'),
          radius: 16,
        ),
        SizedBox(height: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mafrodd Linoar',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Slider(
              value: 0,
              onChanged: (_) {},
              label: '0',
              divisions: 5,
            ),
            SizedBox(height: 8),
            TextField(
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'Type Something Here',
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  iconSize: 16,
                  color: Color(0xFF858585),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  static Widget reviewUser({
    @required ReviewTile reviewData,
    bool isPersonalMsg = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(reviewData.photo),
          radius: 16,
        ),
        SizedBox(width: 15),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        reviewData.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: <Widget>[
                          Text(
                            reviewData.rate.toString(),
                            style: TextStyle(
                              color: Color(0xFFE36789),
                            ),
                          ),
                          Icon(Icons.tag_faces,
                              color: Color(0xFFE36789), size: 14),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: CircleAvatar(
                              radius: 3,
                              backgroundColor: Color(0xFF858585),
                            ),
                          ),
                          Text(
                            reviewData.date,
                            style: TextStyle(
                              color: Color(0xFF858585),
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  BlocBuilder<AuthenticationBloc, AuthenticationState>(
                    builder: (context, state) => state.maybeWhen(
                      authenticated: (_) => PopupMenuButton(
                        itemBuilder: (ctx) {
                          if (isPersonalMsg) {
                            return [
                              PopupMenuItem(
                                value: 0,
                                child: Text('Edit'),
                              ),
                            ];
                          }
                          return [
                            PopupMenuItem(
                              value: 0,
                              child: Text('Review was Helpful'),
                            ),
                            PopupMenuItem(
                              value: 1,
                              child: Text('Report'),
                            ),
                          ];
                        },
                        icon: Icon(Icons.more_vert),
                        initialValue: -1,
                      ),
                      unauthenticated: () => SizedBox.shrink(),
                      orElse: () => null,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(reviewData.msg),
            ],
          ),
        ),
      ],
    );
  }

  Widget replyUser(TileAtr replyData) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFF3F3F3),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(replyData.photo),
            radius: 16,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    replyData.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  BlocBuilder<AuthenticationBloc, AuthenticationState>(
                    builder: (context, state) => state.maybeWhen(
                      authenticated: (_) => PopupMenuButton(
                        itemBuilder: (ctx) {
                          return [
                            PopupMenuItem(
                              value: 0,
                              child: Text('Review was Helpful'),
                            ),
                          ];
                        },
                        icon: Icon(Icons.more_vert),
                        initialValue: -1,
                      ),
                      unauthenticated: () => SizedBox.shrink(),
                      orElse: () => null,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Text(replyData.msg),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: NestedScrollView(
        headerSliverBuilder: (ctx, _) => [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: header(),
            floating: true,
            snap: true,
          ),
          SliverPersistentHeader(
            delegate: SliverHeaderDelegate(
              minHeight: 60,
              maxHeight: 60,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (ctx, idx) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ChoiceChip(
                          avatar: Icon(Icons.star, size: 14),
                          shape: StadiumBorder(
                            side: BorderSide(color: Color(0xFF858585)),
                          ),
                          backgroundColor: Colors.transparent,
                          selectedColor: Colors.transparent,
                          selected: false,
                          onSelected: (i) {},
                          label: Text((idx++).toString()),
                        ),
                      ),
                      itemCount: 5,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  PopupMenuButton(
                    itemBuilder: (ctx) => [
                      PopupMenuItem(
                        value: 0,
                        child: Text('All'),
                      ),
                      PopupMenuItem(
                        value: 1,
                        child: Text('Newest'),
                      ),
                    ],
                    icon: Icon(Icons.sort),
                    initialValue: 0,
                  ),
                ],
              ),
            ),
            pinned: true,
          ),
        ],
        body: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: reviewList.length,
          itemBuilder: (ctx, idx) {
            if (reviewList[idx].reply == null) {
              return Padding(
                padding: EdgeInsets.only(bottom: 14),
                child: reviewUser(reviewData: reviewList[idx]),
              );
            }

            return Padding(
              padding: EdgeInsets.only(bottom: 14),
              child: Column(
                children: [
                  reviewUser(reviewData: reviewList[idx]),
                  Padding(
                    padding: EdgeInsets.only(left: 36, top: 12),
                    child: replyUser(reviewList[idx].reply),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  List<ReviewTile> reviewList = [
    ReviewTile(
      photo: 'assets/person.jpg',
      name: 'Mamang Sinaga',
      rate: 5.6,
      date: '2 weeks ago',
      msg: 'Be Yourself and Never Surender. lmao I Joke to You theres lot',
      reply: TileAtr(
        photo: 'assets/person.jpg',
        name: 'Mamang Sinaga',
        msg: 'Be Yourself and Never Surender. lmao I Joke to You theres lot ',
      ),
    ),
    ReviewTile(
      photo: 'assets/person.jpg',
      name: 'Moria Bridg',
      rate: 8.2,
      date: '2 weeks ago',
      msg:
          'Be Yourself and Never Surender. lmao I Joke to You theres lot more information',
    ),
    ReviewTile(
      photo: 'assets/person.jpg',
      name: 'Yellow Stone',
      rate: 5.6,
      date: '2 weeks ago',
      msg:
          'you interest, check details to get more information. you interest, check details to get more information',
    ),
  ];
}

class TileAtr {
  TileAtr({
    this.photo,
    this.name,
    this.msg,
  });

  final String photo;
  final String name;
  final String msg;
}

class ReviewTile extends TileAtr {
  ReviewTile({
    this.rate,
    this.date,
    this.reply,
    String photo,
    String name,
    String msg,
  }) : super(photo: photo, name: name, msg: msg);

  final double rate;
  final String date;
  final TileAtr reply;
}
