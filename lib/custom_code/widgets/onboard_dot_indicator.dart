// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dots_indicator/dots_indicator.dart';

class OnboardDotIndicator extends StatefulWidget {
  const OnboardDotIndicator({
    super.key,
    this.width,
    this.height,
    required this.length,
    required this.index,
    required this.activeColor,
    required this.inactiveColor,
    required this.size,
  });

  final double? width;
  final double? height;
  final int length;
  final int index;
  final Color activeColor;
  final Color inactiveColor;
  final double size;

  @override
  State<OnboardDotIndicator> createState() => _OnboardDotIndicatorState();
}

class _OnboardDotIndicatorState extends State<OnboardDotIndicator> {
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: widget.length,
      position: widget.index,
      decorator: DotsDecorator(
        size: Size.square(widget.size),
        activeSize: Size.square(widget.size),
        // activeShape:
        //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        activeColor: widget.activeColor,
        color: widget.inactiveColor,
      ),
    );
  }
}
