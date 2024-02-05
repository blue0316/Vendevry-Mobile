import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sub_category_selector_model.dart';
export 'sub_category_selector_model.dart';

class SubCategorySelectorWidget extends StatefulWidget {
  const SubCategorySelectorWidget({
    super.key,
    this.parameter1,
  });

  final int? parameter1;

  @override
  State<SubCategorySelectorWidget> createState() =>
      _SubCategorySelectorWidgetState();
}

class _SubCategorySelectorWidgetState extends State<SubCategorySelectorWidget> {
  late SubCategorySelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubCategorySelectorModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(19.0, 10.0, 19.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: FlutterFlowDropDown<int>(
              controller: _model.subcategoriesValueController ??=
                  FormFieldController<int>(
                _model.subcategoriesValue ??= 0,
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
              onChanged: (val) =>
                  setState(() => _model.subcategoriesValue = val),
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 54.0,
              searchHintTextStyle: FlutterFlowTheme.of(context)
                  .labelMedium
                  .override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    fontSize: 18.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelMediumFamily),
                  ),
              searchTextStyle: FlutterFlowTheme.of(context).bodyMedium,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    fontSize: 16.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
              searchHintText: 'Search for a category...',
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
              disabled: (widget.parameter1 != null) &&
                  (FFAppState()
                          .productCategories
                          .where((e) => e.parentId == widget.parameter1)
                          .toList()
                          .length >
                      0),
              isOverButton: true,
              isSearchable: true,
              isMultiSelect: false,
            ),
          ),
        ],
      ),
    );
  }
}
