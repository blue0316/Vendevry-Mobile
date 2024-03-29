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

import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class CircleColorPalette extends StatefulWidget {
  const CircleColorPalette({
    super.key,
    this.width,
    this.height,
    required this.onColorChanged,
    required this.setColorField,
  });

  final double? width;
  final double? height;
  final Future Function(Color color) onColorChanged;
  final Future Function(Color color) setColorField;

  @override
  State<CircleColorPalette> createState() => _CircleColorPaletteState();
}

class _CircleColorPaletteState extends State<CircleColorPalette> {
  Color currentColor = Colors.limeAccent;

  void changeColor(Color color) {
    setState(() => currentColor = color);
    // If callback is provided, call it
    widget.onColorChanged(color);
    widget.setColorField(color);
    setState(() {
      currentColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(),
          child: Container(
            width: 160,
            height: 160,
            child: Container(
              width: 160,
              height: 160,
              child: ColorPicker(
                pickerColor: currentColor,
                onColorChanged: changeColor,
                paletteType: PaletteType.hueWheel,
                enableAlpha: false, // Set to true to enable alpha slider
                displayThumbColor: false,
                pickerAreaBorderRadius: const BorderRadius.all(Radius.zero),
                pickerAreaHeightPercent: 1,
                colorPickerWidth: 160,
                labelTypes: [],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: currentColor,
            ),
          ),
        ),
        Icon(
          Icons.add,
          color: Colors.black,
          size: 32,
        ),
      ].divide(SizedBox(width: 16)),
    );
  }
}
