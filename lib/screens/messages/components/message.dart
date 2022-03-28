import 'package:flutter/material.dart';
import 'package:message/models/ChatMessage.dart';
import 'package:message/screens/messages/components/audio_message.dart';
import 'package:message/screens/messages/components/text_message.dart';
import 'package:message/screens/messages/components/video_message.dart';

class Message extends StatelessWidget {
  final ChatMessage message;

  const Message({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
          break;
        case ChatMessageType.audio:
          return AudioMessage(message: message);
          break;
        case ChatMessageType.video:
          return VideoMessage();
          break;
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              radius: 12.0,
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
            SizedBox(width: 20.0 / 2),
          ],
          messageContaint(message),
          if(message.isSender) MessageStatusDot(status: message.messageStatus),
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus status;

  const MessageStatusDot({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20 / 2),
      height: 12.0,
      width: 12.0,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        shape: BoxShape.circle,
      ),
      child: Icon(status == MessageStatus.not_sent ? Icons.close : Icons.done, size: 8.0, color: Colors.white,),
    );
  }
}


