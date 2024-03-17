import 'package:intl/intl.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

Map<String, String> getCurrentDayAndTime() {
  DateTime now = DateTime.now();

  // Get the current day of the week abbreviation (e.g., mon, tue, wed)
  String day = DateFormat('E').format(now).toLowerCase().toString();

  // Get the current time in hh:mm format
  String time = DateFormat('HH:mm:ss').format(now).toString();

  // Return the day and time in a Map
  return {'day': day, 'time': time};
}

bool isCurrentlyOpen(String currentTime, String? openTime, String? closeTime) {
  try {
    if (isValidTimeFormat(openTime) && isValidTimeFormat(closeTime)) {
      // Get the current time
      DateTime openDateTime = DateTime.parse('2022-01-01 $openTime');
      DateTime closeDateTime = DateTime.parse('2022-01-01 $closeTime');
      DateTime currentDateTime = DateTime.parse('2022-01-01 $currentTime');

      // Check if the current time falls within the opening hours
      if (currentDateTime.isAfter(openDateTime) &&
          currentDateTime.isBefore(closeDateTime)) {
        return true; // Currently open
      } else {
        return false; // Currently closed
      }
    } else {
      return false;
    }
  } catch (e) {
    log.e(e);
    return false;
  }
}

bool isValidTimeFormat(String? time) {
  if (time == null || time == "") return false;

  // Define a regular expression to match HH:mm:ss format
  RegExp regex = RegExp(r'^([01]\d|2[0-3]):([0-5]\d):([0-5]\d)$');

  // Check if the time matches the regular expression
  return regex.hasMatch(time);
}

String formatTime(String? time) {
  if (!isValidTimeFormat(time)) return '-';

  // Split the time into hours and minutes
  List<String> parts = time!.split(':');
  int hours = int.parse(parts[0]);
  int minutes = int.parse(parts[1]);

  // Determine the AM or PM suffix
  String suffix = hours < 12 ? '오전' : '오후';

  // Convert 24-hour format to 12-hour format
  if (hours > 12) {
    hours -= 12;
  } else if (hours == 0) {
    hours = 12;
  }

  // Format the time string
  return '$suffix $hours:${minutes.toString().padLeft(2, '0')}시';
}

int convertSecondsToMinutes(int seconds) {
  return (seconds / 60).floor();
}

String parseAndFormatDateTime(DateTime dateTime) {
  String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);
  return formattedDate;
}

final timestamp = DateTime.now().millisecondsSinceEpoch;
