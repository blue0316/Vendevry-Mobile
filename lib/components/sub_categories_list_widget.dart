import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sub_categories_list_model.dart';
export 'sub_categories_list_model.dart';

class SubCategoriesListWidget extends StatefulWidget {
  const SubCategoriesListWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    required this.setValue,
    this.initialCategoryId,
  });

  final int? parameter1;
  final int? parameter2;
  final Future Function(int? categoryId)? setValue;
  final int? initialCategoryId;

  @override
  State<SubCategoriesListWidget> createState() =>
      _SubCategoriesListWidgetState();
}

class _SubCategoriesListWidgetState extends State<SubCategoriesListWidget> {
  late SubCategoriesListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubCategoriesListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: (widget.parameter2 != null) &&
          (FFAppState()
                  .productCategories
                  .where((e) => e.parentId == widget.parameter2)
                  .toList()
                  .length >
              0),
      child: FlutterFlowDropDown<int>(
        controller: _model.subcategoriesValueController ??=
            FormFieldController<int>(
          _model.subcategoriesValue ??= widget.initialCategoryId,
        ),
        options: List<int>.from(FFAppState()
            .productCategories
            .where((e) => e.parentId == widget.parameter1)
            .toList()
            .map((e) => e.id)
            .toList()),
        optionLabels: FFAppState()
            .productCategories
            .where((e) => e.parentId == widget.parameter1)
            .toList()
            .map((e) => e.name)
            .toList(),
        onChanged: (val) async {
          setState(() => _model.subcategoriesValue = val);
          await widget.setValue?.call(
            _model.subcategoriesValue,
          );
        },
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 54.0,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
              fontSize: 16.0,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
            ),
        icon: Icon(
          Icons.arrow_drop_down,
          color: Color(0xFF707070),
          size: 28.0,
        ),
        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 1.0,
        borderColor: Color(0xFF707070),
        borderWidth: 1.0,
        borderRadius: 27.0,
        margin: EdgeInsetsDirectional.fromSTEB(33.0, 4.0, 28.0, 4.0),
        hidesUnderline: true,
        isOverButton: true,
        isSearchable: false,
        isMultiSelect: false,
      ),
    );
  }
}
