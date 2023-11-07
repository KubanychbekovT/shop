class DateFormatter{
  static String formatDurationFromDateTime(DateTime dateTime) {
    DateTime now = DateTime.now();
    Duration difference = now.difference(dateTime);

    if (difference.inMinutes < 60) {
      return "${difference.inMinutes} минут";
    } else if (difference.inHours < 24) {
      return "${difference.inHours} часов";
    } else if (difference.inDays < 30) {
      return "${difference.inDays} дней";
    } else {
      int months = (difference.inDays / 30).floor();
      return "$months месяцев";
    }
  }
}