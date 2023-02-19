import '../utils/utils.dart';
import 'score_widget.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' hide WidgetbookUseCase;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: "MessageWidget", type: MessageWidget)
Widget messageWidget(BuildContext context) => Scaffold(
      body: Center(
        child: MessageWidget(
          isStart:
              context.knobs.boolean(label: "is start", initialValue: false),
          score: context.knobs.number(label: "score", initialValue: 0) as int?,
        ),
      ),
    );

class MessageWidget extends StatelessWidget {
  final bool? isStart;
  final int? score;
  const MessageWidget({Key? key, this.isStart, this.score}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 500),
      opacity: isStart! ? 0 : 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetName.sprites.message,
          ),
          SizedBox(height: 30),
          ScoreWidget(
            score: score,
          ),
        ],
      ),
    );
  }
}
