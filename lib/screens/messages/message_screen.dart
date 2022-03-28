import 'package:flutter/material.dart';

import '../messages/components/body.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.png"),
          ),
          SizedBox(width: 20 * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Emir",
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                "Active 3m ago",
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.local_phone),),
        IconButton(onPressed: (){}, icon: Icon(Icons.videocam),),
        SizedBox(width: 20 / 2),
      ],
    );
  }
}
