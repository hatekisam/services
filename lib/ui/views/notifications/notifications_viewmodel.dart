import 'package:socialservices/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NotificationItem {
  String title;
  String message;
  String date;

  NotificationItem({
    required this.title,
    required this.message,
    required this.date,
  });
}

class NotificationsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void goBack() {
    _navigationService.back();
  }

  List<NotificationItem> notifications = [
    NotificationItem(
      title: "Notification 1",
      message: "This is the first notification",
      date: "2023-09-17", // Replace with your date format
    ),
    NotificationItem(
      title: "Notification 2",
      message: "This is the second notification",
      date: "2023-09-17", // Replace with your date format
    ),
    NotificationItem(
      title: "Notification 3",
      message: "This is the third notification",
      date: "2023-09-16", // Replace with your date format
    ),
  ];

  bool isTodayOrYesterdayDate(String dateStr) {
    final currentDate = DateTime.now();
    final parsedDate = DateTime.parse(dateStr);

    if (currentDate.year == parsedDate.year &&
        currentDate.month == parsedDate.month &&
        currentDate.day == parsedDate.day) {
      return true; // Today
    } else {
      final yesterday = currentDate.subtract(Duration(days: 1));
      if (yesterday.year == parsedDate.year &&
          yesterday.month == parsedDate.month &&
          yesterday.day == parsedDate.day) {
        return true; // Yesterday
      }
    }

    return false;
  }

  Map<String, List<NotificationItem>> groupByDate() {
    Map<String, List<NotificationItem>> groupedNotifications = {};

    for (var notification in notifications) {
      // Logic to extract the date from the notification item
      String date =
          notification.date; // Replace with actual date extraction logic

      if (groupedNotifications.containsKey(date)) {
        groupedNotifications[date]!.add(notification);
      } else {
        groupedNotifications[date] = [notification];
      }
    }

    return groupedNotifications;
  }

  Map<String, List<NotificationItem>> groupedNotifications = {};

  NotificationsViewModel() {
    groupedNotifications = groupByDate();
  }
}
