import 'package:flappy_bird/utils/audio/audio.dart';
import 'dart:js' as js;

class AudioWEB implements Audio {
  @override
  void play(String path) {
    js.context.callMethod('playAudio', [path]);
  }
}

Audio getAudio() => AudioWEB();
