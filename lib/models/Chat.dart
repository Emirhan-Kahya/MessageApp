class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.image = '',
    this.lastMessage = '',
    this.name = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatData = [
  Chat(
    image: 'assets/images/profile.png',
    name: "User 1",
    lastMessage: "WOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO",
    time: '1m ago',
    isActive: true,
  ),

  Chat(
    image: 'assets/images/profile.png',
    name: "User 2",
    lastMessage: "Aaaaaaaaaaaaaaaaaaaa",
    time: '5m ago',
    isActive: false,
  ),

  Chat(
    image: 'assets/images/profile.png',
    name: "User 3",
    lastMessage: "Hi, How are you?",
    time: '2m ago',
    isActive: true,
  ),

  Chat(
    image: 'assets/images/profile.png',
    name: "User 4",
    lastMessage: "Test message",
    time: '10m ago',
    isActive: false,
  ),

  Chat(
    image: 'assets/images/profile.png',
    name: "User 2",
    lastMessage: "Aaaaaaaaaaaaaaaaaaaa",
    time: '5m ago',
    isActive: false,
  ),

  Chat(
    image: 'assets/images/profile.png',
    name: "User 2",
    lastMessage: "Aaaaaaaaaaaaaaaaaaaa",
    time: '5m ago',
    isActive: false,
  ),

  Chat(
    image: 'assets/images/profile.png',
    name: "User 2",
    lastMessage: "Aaaaaaaaaaaaaaaaaaaa",
    time: '5m ago',
    isActive: false,
  ),

  Chat(
    image: 'assets/images/profile.png',
    name: "User 2",
    lastMessage: "Aaaaaaaaaaaaaaaaaaaa",
    time: '5m ago',
    isActive: false,
  ),
];
