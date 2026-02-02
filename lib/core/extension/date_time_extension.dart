import 'dart:core';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String get timeOnly {
    final DateFormat formatter = DateFormat.Hms(); // Format: HH:mm:ss
    return formatter.format(this);
  }

  String get weekDayFromDateTime => DateFormat('EEEE').format(this);

  static String get today => DateFormat('EEEE').format(now);

  static DateTime get now => DateTime.now();

  static DateTime get todayStartOfDay =>
      DateTime.now().copyWith(hour: 0, minute: 0, second: 0, microsecond: 0, millisecond: 0);

  bool get isExpired => this.isBefore(DateTime.now().toLocal());

  String get parsedDate => DateFormat('yyyy-MM-dd').format(this);

  String get toDayMonthYear => DateFormat('dd/MM/yyyy').format(this);

  String get toWordDateFormat =>
      '${DateFormat('E, d').format(this)}${getDaySuffix(this.day)} ${DateFormat('MMM, y').format(this)}';

  String get toFullWordDateFormat => '${DateFormat('EEEE, d').format(this)} ${DateFormat('MMMM y').format(this)}';

  DateTime get toLocalDateTimeFormat => this.toLocal();

  DateTime get toUTCDateTimeFormat => this.copyWith(microsecond: 0).toUtc();

  String get toIOSDateTimeFormat => this.copyWith(microsecond: 0).toUtc().toIso8601String();

  DateTime get myDayUTCDateTimeFormat =>
      this.copyWith(hour: 0, minute: 0, millisecond: 0, second: 0, microsecond: 0).toUtc();

  String get toUTCIOSFormat => this.toUtc().toIso8601String();

  static String get nowUTCISOFormat => DateTimeX.now.toIso8601String();

  String get weekDayDateMonthYear => DateFormat('EEEE, dd MMMM yyyy').format(this);

  String getDaySuffix(int day) {
    if (day >= 11 && day <= 13) {
      return 'th';
    }
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  /// Returns a human-readable representation of the time elapsed since this DateTime.
  String get timeAgo {
    final Duration diff = DateTime.now().difference(this);

    return switch (diff) {
      Duration(inSeconds: < 5) => 'Just now',
      Duration(inSeconds: < 60) => '${diff.inSeconds}s ago',
      Duration(inMinutes: < 60) => '${diff.inMinutes}m ago',
      Duration(inHours: < 24) => '${diff.inHours}h ago',
      Duration(inDays: < 7) => '${diff.inDays}d ago',
      Duration(inDays: < 30) => '${(diff.inDays / 7).floor()} week${(diff.inDays / 7).floor() > 1 ? 's' : ''} ago',
      _ => '${this.day.toString().padLeft(2, '0')}/${this.month.toString().padLeft(2, '0')}/${this.year}',
    };
  }

  String get subsDayRemaining {
    final DateTime expirationDate = DateTime(this.year, this.month, this.day, this.hour, this.minute, this.second);

    final DateTime currentDate = DateTime(now.year, now.month, now.day, now.hour, now.minute, now.second);

    final int difference = expirationDate.difference(currentDate).inDays;

    if (difference >= 0) {
      return '$difference days remaining';
    }

    return 'Subscription Expired';
  }

  String sessionDateTime(DateTime? endTime) {
    if (endTime != null) {
      final String formattedDate =
          "${this.day.toString().padLeft(2, '0')}/${this.month.toString().padLeft(2, '0')}/${this.year}";

      String formatTime(DateTime time) {
        final int hour = time.hour % 12 == 0 ? 12 : time.hour % 12;
        final String minute = time.minute.toString().padLeft(2, '0');
        final String period = time.hour >= 12 ? 'PM' : 'AM';
        return "${hour.toString().padLeft(2, '0')}:${minute}${period}";
      }

      final DateTime endTime = this.add(const Duration(hours: 1));
      final String formattedStartTime = formatTime(this);
      final String formattedEndTime = formatTime(endTime);

      return '$formattedDate | $formattedStartTime - $formattedEndTime';
    }
    return 'N/A';
  }

  List<DateTime> getWeek() {
    DateTime firstDateOfWeek = this.subtract(Duration(days: this.weekday));

    return List<DateTime>.generate(7, (int index) => firstDateOfWeek.add(Duration(days: index + 1)));
  }

  bool isSameDay(DateTime dateTime) =>
      this.year == dateTime.year && this.day == dateTime.day && this.month == dateTime.month;

  String get monthOnly => DateFormat('MMM').format(this);

  String get yearOnly => DateFormat('yyyy').format(this);
}

extension TimeOfDayX on TimeOfDay {
  String get parsedTime {
    final DateTime currentDate = DateTimeX.now;
    final DateTime newDate = DateTime(currentDate.year, currentDate.month, currentDate.year, hour, minute);
    return DateFormat('hh:mm a').format(newDate);
  }

  DateTime get toDateTime {
    final DateTime currentDate = DateTimeX.now;
    return new DateTime(currentDate.year, currentDate.month, currentDate.day, hour, minute);
  }
}
