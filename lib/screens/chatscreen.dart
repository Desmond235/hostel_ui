import 'package:flutter/material.dart';
import 'package:hostel_ui/components/build_title_container.dart';
import 'package:hostel_ui/components/chat_list.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          buildTitleContainer(size, context, "Inbox Messages"),
          Positioned(
            top: size.height * 0.132,
            left: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: size.width,
              height: size.height * 0.89,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: ChatList(),
            ),
          ),
        ],
      ),
    );
  }
}
