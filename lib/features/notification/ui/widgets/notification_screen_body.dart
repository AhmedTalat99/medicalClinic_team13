import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/widgets/custom_app_bar.dart';
import 'notification_list_view_item.dart';

class NotificationScreenBody extends StatelessWidget {
  const NotificationScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(title: 'Notification',),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: NotificationListViewItem(),
          ),
        ),
      ],
    );
  }
}
