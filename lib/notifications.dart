import 'dart:async';

import 'package:awesome_notifications/awesome_notifications.dart';

int createID() {
  return DateTime
      .now()
      .microsecondsSinceEpoch
      .remainder(200);
}


Future<void> createNotification() async {
  await Future.delayed(Duration(seconds: 3));
  await AwesomeNotifications().createNotification(
      content: NotificationContent(id: createID(), channelKey: 'scheduled_channel',
      title: '${Emojis.money_coin + Emojis.plant_cactus} Buy me a coffee',
      body: 'Florist Baker street 34',
      bigPicture: 'assets://assets/notification_map.png',
      notificationLayout: NotificationLayout.BigPicture,
      // customSound: 'resource://raw/wrench'
      ));
}