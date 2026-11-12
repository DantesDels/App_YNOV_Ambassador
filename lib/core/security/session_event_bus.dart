import 'dart:async';

/// Broadcasts "refresh token rejected" so the auth notifier can end the
/// session without creating a dependency cycle between Dio and Riverpod.
class SessionEventBus {
  final StreamController<void> _controller = StreamController<void>.broadcast();

  Stream<void> get onSessionExpired => _controller.stream;

  void emitSessionExpired() {
    if (!_controller.isClosed) {
      _controller.add(null);
    }
  }

  Future<void> dispose() async {
    await _controller.close();
  }
}
