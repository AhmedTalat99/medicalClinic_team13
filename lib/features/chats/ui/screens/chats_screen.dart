import 'package:flutter/material.dart';
import '../widgets/chats_screen_body.dart';


class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChatsScreenBody(),
    );
  }
}
