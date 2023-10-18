import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

void myNotification() {
  AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: 10,
      channelKey: 'basic_channel',
      actionType: ActionType.Default,
      title: '94765662454',
      body: 'Incoming voice call',
      category: NotificationCategory.Call,
    ),
    actionButtons: [
      NotificationActionButton(
        key: 'AGREED1',
        label: 'Decline',
        autoDismissible:
            true, // Whether the notification should be auto-cancelled when the user taps the button
        // isDangerousOption: true,
        color: Colors.red,
        actionType: ActionType
            .DismissAction, // Behaves as the same way as a user dismiss action, dismissing the respective notification and firing dismissMethod. Ignores autoDismissible property.
      ),
      NotificationActionButton(
          color: Colors.green,
          key: 'AGREED2',
          label: 'Answer',
          autoDismissible: true,
          isDangerousOption: false,
          actionType: ActionType
              .Default // Is the default action type, forcing the app to goes foreground.
          ),
    ],
  );
}
