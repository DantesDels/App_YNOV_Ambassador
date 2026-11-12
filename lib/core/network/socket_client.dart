import 'dart:async';
import 'dart:convert';

import 'package:web_socket_channel/web_socket_channel.dart';

import 'package:campus_pulse/core/constants/app_config.dart';

/// Realtime channel used by the live activity ticker and seat gauges.
///
/// The server is the only source of truth: the client receives capacity deltas
/// and already-priced social events, never recomputes them.
class SocketClient {
  SocketClient({required this.baseUrl, required this.accessTokenProvider});

  final String baseUrl;
  final Future<String?> Function() accessTokenProvider;

  final StreamController<Map<String, dynamic>> _controller =
      StreamController<Map<String, dynamic>>.broadcast();

  WebSocketChannel? _channel;
  StreamSubscription<dynamic>? _subscription;
  Timer? _reconnectTimer;
  bool _disposed = false;
  int _attempt = 0;

  Stream<Map<String, dynamic>> get messages => _controller.stream;

  Future<void> connect() async {
    if (_disposed || _channel != null) {
      return;
    }
    final String? token = await accessTokenProvider();
    if (token == null || token.isEmpty) {
      return;
    }

    final Uri uri = Uri.parse(baseUrl).replace(
      queryParameters: <String, String>{'access_token': token},
    );

    try {
      final WebSocketChannel channel = WebSocketChannel.connect(uri);
      await channel.ready;
      _channel = channel;
      _attempt = 0;
      _subscription = channel.stream.listen(
        _onData,
        onError: (Object _) => _handleDisconnect(),
        onDone: _handleDisconnect,
        cancelOnError: true,
      );
    } on Exception {
      _handleDisconnect();
    }
  }

  void _onData(dynamic raw) {
    if (raw is! String) {
      return;
    }
    try {
      final Object? decoded = jsonDecode(raw);
      if (decoded is Map<String, dynamic> && !_controller.isClosed) {
        _controller.add(decoded);
      }
    } on FormatException {
      // Ignore malformed frames rather than breaking the live feed.
    }
  }

  void _handleDisconnect() {
    _subscription?.cancel();
    _subscription = null;
    _channel = null;
    if (_disposed) {
      return;
    }
    _attempt = _attempt < 5 ? _attempt + 1 : 5;
    final Duration delay = AppConfig.activityReconnectDelay * _attempt;
    _reconnectTimer?.cancel();
    _reconnectTimer = Timer(delay, connect);
  }

  Future<void> dispose() async {
    _disposed = true;
    _reconnectTimer?.cancel();
    await _subscription?.cancel();
    await _channel?.sink.close();
    _channel = null;
    await _controller.close();
  }
}
