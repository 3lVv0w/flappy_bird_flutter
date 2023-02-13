import 'package:flappy_bird/utils/audio/audio.dart';

class AudioMobile implements Audio {
  @override
  void play(String path) {}
}

Audio getAudio() => AudioMobile();
