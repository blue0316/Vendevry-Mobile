// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:toggle_switch/toggle_switch.dart';

class ToggleSwitchWidget extends StatefulWidget {
  const ToggleSwitchWidget({
    super.key,
    this.width,
    this.height,
    required this.inactiveBgColor,
    required this.activeFgColor,
    required this.inactiveFgColor,
    this.onSwitch,
    required this.activeBgColor,
  });

  final double? width;
  final double? height;
  final Color inactiveBgColor;
  final Color activeFgColor;
  final Color inactiveFgColor;
  final Future Function(int index)? onSwitch;
  final Color activeBgColor;

  @override
  State<ToggleSwitchWidget> createState() => _ToggleSwitchWidgetState();
}

class _ToggleSwitchWidgetState extends State<ToggleSwitchWidget> {
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: ((MediaQuery.of(context).size.width - 30 - 32) / 2)
          .truncate()
          .toDouble(),
      cornerRadius: 100.0,
      activeBgColors: [
        [widget.activeBgColor],
        [widget.activeBgColor]
      ],
      activeFgColor: widget.activeFgColor,
      inactiveBgColor: widget.inactiveBgColor,
      inactiveFgColor: widget.inactiveFgColor,
      initialLabelIndex: 0,
      totalSwitches: 2,
      labels: ['Login', 'Sign-Up'],
      radiusStyle: true,
      onToggle: (_index) async {
        print('switched to: $_index');
        if (widget.onSwitch != null) {
          await widget.onSwitch!(_index!);
        }
      },
    );
  }
}
