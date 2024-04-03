import 'package:flutter/material.dart';
import 'package:medical_clinic_team13/core/widgets/custom_app_bar.dart';
import 'chats_list_view_item.dart';


class ChatsScreenBody extends StatelessWidget {
  const ChatsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(title: 'Chats',),
        Expanded(
          child: ChatsListViewItem(),
        ),
      ],
    );
  }
}
