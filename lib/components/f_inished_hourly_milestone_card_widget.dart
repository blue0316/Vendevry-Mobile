import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'f_inished_hourly_milestone_card_model.dart';
export 'f_inished_hourly_milestone_card_model.dart';

class FInishedHourlyMilestoneCardWidget extends StatefulWidget {
  const FInishedHourlyMilestoneCardWidget({
    super.key,
    required this.amount,
    required this.hours,
    required this.paidAt,
    required this.finishedAt,
  });

  final double? amount;
  final double? hours;
  final String? paidAt;
  final String? finishedAt;

  @override
  State<FInishedHourlyMilestoneCardWidget> createState() =>
      _FInishedHourlyMilestoneCardWidgetState();
}

class _FInishedHourlyMilestoneCardWidgetState
    extends State<FInishedHourlyMilestoneCardWidget> {
  late FInishedHourlyMilestoneCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FInishedHourlyMilestoneCardModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.checkboxValue ??= true,
                        onChanged: (newValue) async {
                          setState(() => _model.checkboxValue = newValue!);
                        },
                        activeColor: Color(0xFF67CCC7),
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        '\$',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.w900,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.amount?.toString(),
                        '0.00',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).primary,
                            fontWeight: FontWeight.w900,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Billed',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.w900,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.hours?.toString(),
                    '0',
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall,
                ),
                Text(
                  'hours - ',
                  style: FlutterFlowTheme.of(context).bodySmall,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.paidAt,
                      '12/22/24',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
