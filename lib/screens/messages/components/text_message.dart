import 'package:flutter/material.dart';
import 'package:message/models/ChatMessage.dart';

class TextMessage extends StatelessWidget {
  final ChatMessage message;

  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding:
      EdgeInsets.symmetric(horizontal: 20.0 * 0.75, vertical: 20.0 / 2),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(message.isSender ? 1 : 0.14),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        message.text,
        style: TextStyle(
            color: message.isSender ? Colors.white : Colors.blueAccent),
      ),
    );
  }
}
