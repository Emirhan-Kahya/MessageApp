import 'package:flutter/material.dart';
import 'package:message/models/ChatMessage.dart';

class AudioMessage extends StatelessWidget {
  final ChatMessage message;

  const AudioMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding:
      EdgeInsets.symmetric(horizontal: 20.0 * 0.75, vertical: 20.0 / 2.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.blueAccent.withOpacity(message.isSender ? 1 : 0.1),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender ? Colors.white : Colors.blueAccent,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 / 2),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2.0,
                    color: message.isSender ? Colors.white : Colors.blueAccent.withOpacity(0.4),
                  ),
                  Positioned(
                    left: 0.0,
                    child: Container(
                      height: 8.0,
                      width: 8.0,
                      decoration: BoxDecoration(
                        color: message.isSender ? Colors.white : Colors.blueAccent.withOpacity(0.4),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text("0.55", style: TextStyle(
            fontSize: 12.0,
            color: message.isSender ? Colors.white : null ,
          ),),
        ],
      ),
    );
  }
}
