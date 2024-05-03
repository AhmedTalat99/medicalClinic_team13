

import 'package:flutter/material.dart';
import 'custom_notification_item.dart';

class NotificationListViewItem extends StatelessWidget {
  const NotificationListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return const CustomNotificationItem();
        },
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 20);
  }
}

