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

import 'package:circular_progress_stack/circular_progress_stack.dart';

class CircleProgressWidget extends StatefulWidget {
  const CircleProgressWidget({
    super.key,
    this.width,
    this.height,
    required this.progress,
    this.strokeColor,
    this.strokeWidth,
    this.size,
  });

  final double? width;
  final double? height;
  final double progress;
  final Color? strokeColor;
  final double? strokeWidth;
  final double? size;

  @override
  State<CircleProgressWidget> createState() => _CircleProgressWidgetState();
}

class _CircleProgressWidgetState extends State<CircleProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: SingleGradientStackCircularProgressBar(
        size: widget.size ?? 200,
        progressStrokeWidth: widget.strokeWidth ?? 15,
        backStrokeWidth: widget.strokeWidth ?? 15,
        startAngle: 0,
        mergeMode: true,
        maxValue: 100,
        backColor: Color(0xF2F2F2),
        barColores: [widget.strokeColor ?? Color(0x2562DC)],
        fullProgressColor: Colors.green,
        barValue: widget.progress,
      ),
    ));
  }
}
