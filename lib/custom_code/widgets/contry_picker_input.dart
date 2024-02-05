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

import 'package:country_code_picker/country_code_picker.dart';

class ContryPickerInput extends StatefulWidget {
  const ContryPickerInput({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<ContryPickerInput> createState() => _ContryPickerInputState();
}

class _ContryPickerInputState extends State<ContryPickerInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width ?? 80,
        height: widget.height ?? 80,
        child: CountryCodePicker(
          onChanged: print,
          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
          initialSelection: 'US',
          favorite: [
            '+1',
          ],
          // optional. Shows only country name and flag
          showCountryOnly: false,
          // optional. Shows only country name and flag when popup is closed.
          showOnlyCountryWhenClosed: false,
          // optional. aligns the flag and the Text left
          alignLeft: false,
        ));
  }
}
