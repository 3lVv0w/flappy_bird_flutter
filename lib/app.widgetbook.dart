// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';
import 'dart:math';
import 'package:flappy_bird/utils/utils.dart';
import 'package:flappy_bird/widgets/bird_widget.dart';
import 'package:flappy_bird/widgets/message_widget.dart';
import 'package:flappy_bird/widgets/pipe_widget.dart';
import 'package:flappy_bird/widgets/score_widget.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(
        name: 'Flappy Bird',
      ),
      themes: [WidgetbookTheme(name: "ligh", data: ThemeData.light())],
      devices: [
        Device(
          name: 'iPhone 13 Pro Max',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 2778.0,
              width: 1284.0,
            ),
            scaleFactor: 3.0,
          ),
          type: DeviceType.mobile,
        ),
        Device(
          name: 'Desktop 1080p',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 1080.0,
              width: 1920.0,
            ),
            scaleFactor: 2.0,
          ),
          type: DeviceType.desktop,
        ),
      ],
      frames: [
        WidgetbookFrame(
          name: 'Widgetbook',
          allowsDevices: true,
        ),
      ],
      categories: [
        WidgetbookCategory(
          name: 'use cases',
          folders: [
            WidgetbookFolder(
              name: 'widgets',
              widgets: [
                WidgetbookComponent(
                  name: 'MessageWidget',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'MessageWidget',
                      builder: (context) => messageWidget(context),
                    ),
                  ],
                  isExpanded: true,
                ),
                WidgetbookComponent(
                  name: 'BirdWidget',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Bird',
                      builder: (context) => birdWidget(context),
                    ),
                  ],
                  isExpanded: true,
                ),
                WidgetbookComponent(
                  name: 'ScoreWidget',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'ScoreWidget',
                      builder: (context) => scoreWidget(context),
                    ),
                  ],
                  isExpanded: true,
                ),
                WidgetbookComponent(
                  name: 'PipeWidget',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'PipeWidget',
                      builder: (context) => pipeWidget(context),
                    ),
                  ],
                  isExpanded: true,
                ),
              ],
              folders: [],
              isExpanded: true,
            ),
          ],
          widgets: [],
        ),
      ],
    );
  }
}
