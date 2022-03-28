import 'package:flutter/material.dart';
import 'package:message/components/chat_card.dart';
import 'package:message/components/filled_outline_button.dart';
import 'package:message/screens/messages/message_screen.dart';

import '../models/Chat.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          color: Colors.blueAccent,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Messages"),
              SizedBox(width: 10.0),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: chatData.length,
              itemBuilder: (context, index) => ChatCard(
                    chat: chatData[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MessagesScreen(),
                      ),
                    ),
                  )),
        )
      ],
    );
  }
}
