import 'dart:math';

import 'package:flappy_bird/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: "PipeWidget", type: PipeWidget)
Widget pipeWidget(BuildContext context) => Scaffold(
      body: Center(
        child: PipeWidget(),
      ),
    );

class PipeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 840,
      width: 52,
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.rotate(
              angle: pi,
              child: Image.asset(
                AssetName.sprites.greenPipe,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(height: 100),
            Image.asset(
              AssetName.sprites.greenPipe,
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
      ),
    );
  }
}
