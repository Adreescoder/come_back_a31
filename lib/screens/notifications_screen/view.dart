import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/notificationItem.dart';
import 'logic.dart';

class Notifications_screenPage extends StatelessWidget {
  Notifications_screenPage({super.key});

  final logic = Get.put(Notifications_screenLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: logic.notifications.length,
        itemBuilder: (context, index) {
          return NotificationCard(notification: logic.notifications[index]);
        },
      ),
    );
  }
}


class NotificationCard extends StatelessWidget {
  final NotificationItem notification;

  const NotificationCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(notification.profileImage),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.username,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 4.0),
                  Text(notification.content),
                  const SizedBox(height: 4.0),
                  Text(
                    notification.time,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
