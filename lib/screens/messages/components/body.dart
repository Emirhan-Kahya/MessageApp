import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:message/models/ChatMessage.dart';
import 'package:message/screens/messages/components/chat_input_field.dart';
import 'package:message/screens/messages/components/message.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView.builder(
              itemCount: mChatMessages.length,
              itemBuilder: (context, index) => Message(
                message: mChatMessages[index],
              ),
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}


