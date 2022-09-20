import 'package:flutter/material.dart';

class AudioPlayerModel with ChangeNotifier {
  bool _playing = false;
  late AnimationController _controller;
  Duration _songDuration = Duration(milliseconds: 0);
  Duration _current = Duration(milliseconds: 0);
  AnimationController get controller => _controller;

  String get songTotalDuration => printDuration(_songDuration);
  String get currentSecond => printDuration(_current);

  double get porcentaje => (this._songDuration.inSeconds > 0)
      ? this._current.inSeconds / this._songDuration.inSeconds
      : 0;
  set controller(AnimationController control) {
    this._controller = control;
  }

  bool get playing => _playing;
  set playing(bool play) {
    _playing = play;
    notifyListeners();
  }

  Duration get songDuration => _songDuration;
  set songDuration(Duration value) {
    _songDuration = value;
    notifyListeners();
  }

  Duration get current => _current;
  set current(Duration value) {
    _current = value;
    notifyListeners();
  }

  String printDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitsMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitsSeconds = twoDigits(duration.inSeconds.remainder(60));

    return "$twoDigitsMinutes:$twoDigitsSeconds";
  }
}
