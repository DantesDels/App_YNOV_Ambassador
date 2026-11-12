import 'package:campus_pulse/core/errors/app_exception.dart';

/// Normalises the common REST envelopes (`raw`, `{data: ...}`, `{items: [...]}`).
abstract final class ApiDataParser {
  static Map<String, dynamic> map(Object? data) {
    if (data is Map<String, dynamic>) {
      final Object? nested = data['data'];
      if (nested is Map<String, dynamic>) {
        return nested;
      }
      return data;
    }
    throw const UnknownException('Réponse serveur illisible.');
  }

  static List<Map<String, dynamic>> list(Object? data, {String? key}) {
    final Object? candidate = data is Map<String, dynamic>
        ? data[key ?? 'items'] ?? data['data'] ?? data['results']
        : data;
    if (candidate is List<dynamic>) {
      return candidate
          .whereType<Map<dynamic, dynamic>>()
          .map(
            (Map<dynamic, dynamic> item) => item.map(
              (dynamic itemKey, dynamic value) => MapEntry<String, dynamic>('$itemKey', value),
            ),
          )
          .toList(growable: false);
    }
    if (candidate == null) {
      return const <Map<String, dynamic>>[];
    }
    throw const UnknownException('Liste serveur illisible.');
  }
}
