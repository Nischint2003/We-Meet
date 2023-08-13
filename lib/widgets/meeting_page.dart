import 'package:flutter/material.dart';

import 'home_screen_button.dart';

class MeetChatPage extends StatelessWidget {
  const MeetChatPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(
                onPressed: () {}, icon: Icons.videocam, text: 'New Meeting'),
            HomeMeetingButton(
                onPressed: () {}, icon: Icons.add_box, text: 'Join Meeting'),
            HomeMeetingButton(
                onPressed: () {},
                icon: Icons.calendar_today_sharp,
                text: 'Shedule Meeting'),
            HomeMeetingButton(
                onPressed: () {},
                icon: Icons.arrow_upward_rounded,
                text: 'Share Screen'),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        const Center(
          child: Text('Start or Join a Meeting'),
        )
      ],
    );
  }
}
