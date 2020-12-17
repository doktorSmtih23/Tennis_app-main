import 'package:chat_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_8.dart';

class ChatMessage extends StatelessWidget {
  final String texto;
  final String uid;
  final AnimationController animationController;

  const ChatMessage(
      {Key key,
      @required this.texto,
      @required this.uid,
      @required this.animationController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return FadeTransition(
      opacity: animationController,
      child: SizeTransition(
        sizeFactor:
            CurvedAnimation(parent: animationController, curve: Curves.easeOut),
        child: Container(
          child: this.uid == authService.usuario.uid
              ? _myMessage()
              : _notMyMessage(),
        ),
      ),
    );
  }

  Widget _myMessage() {
    return ChatBubble(
      clipper: ChatBubbleClipper8(type: BubbleType.sendBubble),
      alignment: Alignment.topRight,
      margin: EdgeInsets.only(top: 10, bottom: 3),
      backGroundColor: Colors.orange,
      child: Container(
        margin: EdgeInsets.only(bottom: 2, left: 5, right: 5),
        padding: EdgeInsets.all(3.0),
        child: Text(
          this.texto,
          style: TextStyle(color: Colors.white),
        ),
        // decoration: BoxDecoration(
        //   color: Color(0xff4d9ef6),
        //   borderRadius: BorderRadius.circular(20),
        // ),
      ),
    );
  }

  Widget _notMyMessage() {
    return ChatBubble(
      clipper: ChatBubbleClipper8(type: BubbleType.receiverBubble),
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: 5, bottom: 5),
      backGroundColor: Colors.grey,
      child: Container(
        margin: EdgeInsets.only(bottom: 2, left: 5, right: 5),
        padding: EdgeInsets.all(3.0),
        child: Text(
          this.texto,
          style: TextStyle(color: Colors.black87),
        ),
      ),
    );
  }
}
