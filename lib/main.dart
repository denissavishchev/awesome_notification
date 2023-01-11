import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

import 'notifications.dart';

void main() {
  AwesomeNotifications().initialize(null, [
    NotificationChannel(
      channelKey: 'scheduled_channel',
      channelGroupKey: 'basic_channel_group',
      channelName: 'Scheduled Notifications',
      defaultColor: Colors.deepOrange,
      importance: NotificationImportance.High,
      channelShowBadge: true,
      channelDescription: 'Notification channel for basic tests',
      playSound: true,
      soundSource: 'resource://raw/res_custom_notification'
    ),
  ],
      channelGroups: [
        NotificationChannelGroup(
            channelGroupKey: 'basic_channel_group',
            channelGroupName: 'Basic group')
      ],
      debug: true);
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  // void initState() {
  //   super.initState();
  //   AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
  //     if (isAllowed) {
  //       showDialog(
  //         context: context,
  //         builder: (context) => AlertDialog(
  //           title: const Text('Allow Notification'),
  //           content: const Text('Our App would like to send you notifications'),
  //           actions: [
  //             TextButton(
  //                 onPressed: () {
  //                   Navigator.pop(context);
  //                 },
  //                 child: const Text(
  //                   'Don\'t Allow',
  //                   style: TextStyle(color: Colors.red, fontSize: 18),
  //                 )),
  //             TextButton(
  //                 onPressed: () => AwesomeNotifications()
  //                     .requestPermissionToSendNotifications()
  //                     .then((_) => Navigator.pop(context)),
  //                 child: const Text(
  //                   'Allow',
  //                   style: TextStyle(color: Colors.green, fontSize: 18),
  //                 ))
  //           ],
  //         ),
  //       );
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Container(
              width: 300,
              height: 600,
              color: Colors.grey,
              child: Column(
                children: const [
                  ElevatedButton(
                      onPressed:
                        createNotification,
                      child: Text('Notification'))
                ],
              ),
            ),
          )),
    );
  }
}
