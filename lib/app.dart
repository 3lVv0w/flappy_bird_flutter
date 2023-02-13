import 'package:flappy_bird/utils/bird_pos.dart';
import 'package:flappy_bird/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookApp.material(
  name: "Flappy Bird",
  frames: [
    WidgetbookFrame(
      name: 'Widgetbook',
      allowsDevices: true,
    ),
  ],
  devices: [
    Apple.iPhone13ProMax,
  ],
  constructor: WidgetbookConstructor.material,
  widgetsExpanded: true,
  foldersExpanded: true,
)
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: ChangeNotifierProvider(
        create: (context) => BirdPos(),
        child: HomeScreen(),
      ),
    );
  }
}
