import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiscussionBar extends StatelessWidget {
  Widget commentField = BlocBuilder<AuthenticationBloc, AuthenticationState>(
    builder: (context, state) {
      if (state is Unauthenticated) return SizedBox.shrink();
      return Padding(
        padding: EdgeInsets.only(bottom: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('person.jpg'),
              radius: 16,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mafrodd Linoar',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextField(
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
            ),
          ],
        ),
      );
    },
  );

  Widget messageTile(
    CommentEntity data, {
    bool isPersonalMsg = false,
  }) =>
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(data?.photo),
            radius: 16,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          data?.name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: <Widget>[
                            InkWell(
                              onTap: () {},
                              child: Text(
                                data?.company,
                                style: TextStyle(
                                  color: Color(0xFF858585),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 3,
                              ),
                            ),
                            Text(
                              data?.date,
                              style: TextStyle(
                                color: Color(0xFF858585),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 15),
                    PopupMenuButton(
                      itemBuilder: (ctx) {
                        if (isPersonalMsg) {
                          return [
                            PopupMenuItem(
                              value: 0,
                              child: Text('Edit'),
                            ),
                            PopupMenuItem(
                              value: 1,
                              child: Text('Delete'),
                            ),
                          ];
                        }
                        return [
                          PopupMenuItem(
                            value: 0,
                            child: Text('Report'),
                          ),
                        ];
                      },
                      icon: Icon(Icons.more_vert),
                      initialValue: 0,
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Text(data?.msg),
              ],
            ),
          ),
        ],
      );

  Widget commentView(Widget msgTile, {List<Widget> reply}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        msgTile,
        Padding(
          padding: EdgeInsets.only(left: 30, top: 10),
          child: ExpansionTile(
            title: Row(
              children: [
                reply == null ? Text('reply') : Text('${reply.length} replies'),
                IconButton(
                  icon: Icon(Icons.thumb_up_alt),
                  onPressed: () {},
                ),
                Text('45'),
                IconButton(
                  icon: Icon(Icons.thumb_down_alt),
                  onPressed: () {},
                ),
              ],
            ),
            initiallyExpanded: true,
            children: reply ?? [commentField],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: <Widget>[
            Text(
              'Comment',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Icon(
              Icons.rate_review,
              size: 16,
              color: Color(0xFF858585),
            ),
            Text(
              '387',
              style: TextStyle(color: Color(0xFF858585)),
            )
          ],
        ),
        Divider(),
        Expanded(
          child: ListView.builder(
            itemCount: commentList.length,
            itemBuilder: (ctx, idx) {
              if (idx == 0) {
                return commentField;
              } else if (commentList[idx].reply == null) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: commentView(messageTile(commentList[idx])),
                );
              }
              return Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: commentView(
                  messageTile(commentList[idx]),
                  reply: commentList[idx]
                      .reply
                      .map(
                        (item) => messageTile(item),
                      )
                      .toList()
                        ..insert(0, commentField),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  List<CommentEntity> commentList = [
    CommentEntity(),
    CommentEntity(
      photo: 'person.jpg',
      name: 'Mamang Sinaga',
      msg: 'Be Yourself and Never Surender. lmao I Joke to You theres lot',
      date: '2 months ago',
      reply: [
        CommentEntity(
          photo: 'person.jpg',
          name: 'Mamang Sinaga',
          msg: 'Be Yourself and Never Surender. lmao I Joke to You theres lot ',
          date: '2 months ago',
        ),
      ],
    ),
    CommentEntity(
      photo: 'person.jpg',
      name: 'Moria Bridg',
      company: 'Kraker Masoni',
      msg:
          'Be Yourself and Never Surender. lmao I Joke to You theres lot more information',
      date: '2 months ago',
    ),
    CommentEntity(
      photo: 'person.jpg',
      name: 'Yellow Stone',
      msg:
          'you interest, check details to get more information. you interest, check details to get more information',
      date: '2 months ago',
    ),
  ];
}

class CommentEntity {
  CommentEntity({
    this.date,
    this.photo,
    this.name,
    this.company = '',
    this.msg,
    this.reply,
  });

  final String date;
  final String photo;
  final String name;
  final String company;
  final String msg;
  final List<CommentEntity> reply;
}
