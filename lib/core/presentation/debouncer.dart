import 'dart:async';

class Debouncer {
  Debouncer({this.delay = const Duration(milliseconds: 500)})
      : _lastTime = DateTime.now().millisecondsSinceEpoch;

  int _lastTime;
  Timer? _timer;
  Duration delay;

  void call(void Function() callback) {
    _timer?.cancel();

    final current = DateTime.now().millisecondsSinceEpoch;
    final delta = current - _lastTime;

    if (delta > delay.inMilliseconds) {
      _lastTime = current;
      callback();
    } else {
      _timer = Timer(delay, callback);
    }
  }

  void dispose() {
    _timer?.cancel();
    _timer = null;
  }
}
