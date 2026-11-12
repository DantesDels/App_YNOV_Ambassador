import 'package:intl/intl.dart';

abstract final class Formatters {
  static final NumberFormat _euro = NumberFormat.simpleCurrency(locale: 'fr_FR', name: 'EUR');
  static final DateFormat _fullDate = DateFormat('EEEE d MMMM • HH:mm', 'fr_FR');
  static final DateFormat _shortDate = DateFormat('d MMM', 'fr_FR');
  static final DateFormat _time = DateFormat('HH:mm', 'fr_FR');

  /// Prices always originate from the backend-computed amount, never from a
  /// client-side calculation.
  static String price(int amountCents, String currency) {
    final String code = currency.toUpperCase();
    if (code == 'EUR') {
      return _euro.format(amountCents / 100);
    }
    return NumberFormat.simpleCurrency(locale: 'fr_FR', name: code).format(amountCents / 100);
  }

  static String fullDate(DateTime date) => _fullDate.format(date.toLocal());

  static String shortDate(DateTime date) => _shortDate.format(date.toLocal());

  static String time(DateTime date) => _time.format(date.toLocal());

  static String relative(DateTime date) {
    final Duration diff = DateTime.now().difference(date.toLocal());
    if (diff.inSeconds < 45) {
      return 'à l’instant';
    }
    if (diff.inMinutes < 60) {
      return 'il y a ${diff.inMinutes} min';
    }
    if (diff.inHours < 24) {
      return 'il y a ${diff.inHours} h';
    }
    return 'il y a ${diff.inDays} j';
  }

  static String countdown(Duration duration) {
    final int totalSeconds = duration.inSeconds < 0 ? 0 : duration.inSeconds;
    final int minutes = totalSeconds ~/ 60;
    final int seconds = totalSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  static String initials(String firstName, String? lastName) {
    final String first = firstName.trim();
    final String last = (lastName ?? '').trim();
    final String firstInitial = first.isEmpty ? '' : first.substring(0, 1).toUpperCase();
    final String lastInitial = last.isEmpty ? '' : last.substring(0, 1).toUpperCase();
    return '$firstInitial$lastInitial';
  }

  static String firstNameOnly(String fullName) {
    final List<String> parts = fullName.trim().split(RegExp(r'\s+'));
    return parts.isEmpty ? fullName : parts.first;
  }
}
