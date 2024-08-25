import 'package:get/get.dart';

import '../../models/notificationItem.dart';

class Notifications_screenLogic extends GetxController {
  final List<NotificationItem> notifications = [
    NotificationItem(
      profileImage: 'https://example.com/profile1.jpg',
      username: 'User1',
      content: 'User1 liked your tweet',
      time: '2h',
    ),
    NotificationItem(
      profileImage: 'https://example.com/profile2.jpg',
      username: 'User2',
      content: 'User2 followed you',
      time: '3h',
    ),
    NotificationItem(
      profileImage: 'https://example.com/profile3.jpg',
      username: 'User3',
      content: 'User3 replied to your tweet',
      time: '5h',
    ),
  ];

}
