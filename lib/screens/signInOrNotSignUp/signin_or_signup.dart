import 'package:flutter/material.dart';
import 'package:message/screens/chats/chat_screen.dart';

import '../../components/primary_button.dart';

class SigninOrSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.asset(
                'assets/images/Logo_light.png',
                height: 146.0,
              ),
              Spacer(),
              PrimaryButton(
                text: 'Sign In',
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatsScreen(),
                  ),
                ),
              ),
              SizedBox(
                height: 20 * 1.5,
              ),
              PrimaryButton(text: 'Sign Up', press: () {}, color: Colors.amber),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
