import 'package:flutter/material.dart';
import 'custom_chats_item.dart';

class ChatsListViewItem extends StatelessWidget {
  const ChatsListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: CustomChatsItem(),
          );
        },
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 20);
  }
}
