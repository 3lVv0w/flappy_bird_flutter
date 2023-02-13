import 'package:flappy_bird/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook/widgetbook.dart' hide WidgetbookUseCase;

@WidgetbookUseCase(name: "Bird", type: BirdWidget)
Widget birdWidget(BuildContext context) => Scaffold(
      body: Center(
        child: BirdWidget(
            bird: context.knobs.options(label: "color", options: const [
          Option<Bird>(
            value: Bird("red"),
            label: "red",
          ),
          Option<Bird>(
            value: Bird("yellow"),
            label: "yellow",
          ),
          Option<Bird>(
            value: Bird("blue"),
            label: "blue",
          ),
        ])),
      ),
    );

class BirdWidget extends StatefulWidget {
  final Bird bird;
  BirdWidget({
    Key key,
    this.bird = const Bird("yellow"),
  }) : super(key: key);
  @override
  _BirdWidgetState createState() => _BirdWidgetState();
}

class _BirdWidgetState extends State<BirdWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, _) {
        if (_animationController.value == 1) {
          _animationController.value = 0;
          _animationController.forward();
        }
        if (_animationController.value <= 1 / 3) {
          return Image.asset(
            widget.bird.getUpFlap(),
            height: 40,
            width: 40,
            fit: BoxFit.contain,
          );
        } else if (_animationController.value <= 2 / 3) {
          return Image.asset(
            widget.bird.getMidFlap(),
            height: 40,
            width: 40,
            fit: BoxFit.contain,
          );
        } else {
          return Image.asset(
            widget.bird.getDownFlap(),
            height: 40,
            width: 40,
            fit: BoxFit.contain,
          );
        }
      },
    );
  }
}
