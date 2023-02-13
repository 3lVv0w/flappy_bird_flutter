export "./audio_locator.dart"
    if (dart.library.html) './audio_web'
    if (dart.library.io) './audio_mobile.dart';

abstract class Audio {
  void play(String path);
}
