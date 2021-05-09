import 'package:auto_route/auto_route.dart';
import 'package:dash_chat/dash_chat.dart';
import 'package:flutter/material.dart';

class ChatRoomPage extends StatelessWidget {
  final String user;
  ChatRoomPage({@PathParam('user') this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Sapriadi Ms',
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Color(0xFF858585),
          ),
        ],
      ),
      body: dashChat(),
    );
  }

  static Widget dashChat() => DashChat(
        user: ChatUser(
          name: "Jhon Doe",
          uid: "12345",
        ),
        messages: [
          ChatMessage(
            text: "Hello",
            user: ChatUser(
              name: "Fayeed",
              uid: "123456789",
            ),
            createdAt: DateTime.now(),
          ),
          ChatMessage(
            text: "hiii too, how are you?",
            user: ChatUser(
              name: "Makisa",
              uid: "123456789",
            ),
            createdAt: DateTime.now(),
          ),
        ],
        onSend: (_) {},
      );
}
