enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

  ChatMessage({
    this.text = '',
    required this.messageType,
    required this.messageStatus,
    required this.isSender,
  });
}

List mChatMessages = [
  ChatMessage(
    text: 'Hi, How are you?',
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    isSender: true,
  ),

  ChatMessage(
    text: 'Good, what about you?',
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    isSender: false,
  ),

  ChatMessage(
    text: 'Test Message!!!',
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    isSender: true,
  ),

  ChatMessage(
    text: 'AAAAAAAAAAAAAAAAAAAAA',
    messageType: ChatMessageType.audio,
    messageStatus: MessageStatus.not_sent,
    isSender: false,
  ),

  ChatMessage(
    text: 'AAAAAAAAAAAAAAAAAAAAA',
    messageType: ChatMessageType.video,
    messageStatus: MessageStatus.not_sent,
    isSender: true,
  ),
];
