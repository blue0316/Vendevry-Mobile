import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_content_model.dart';
export 'no_content_model.dart';

class NoContentWidget extends StatefulWidget {
  const NoContentWidget({
    super.key,
    Color? color,
    int? size,
    String? content,
  })  : this.color = color ?? Colors.white,
        this.size = size ?? 14,
        this.content = content ?? 'No content here ...';

  final Color color;
  final int size;
  final String content;

  @override
  State<NoContentWidget> createState() => _NoContentWidgetState();
}

class _NoContentWidgetState extends State<NoContentWidget> {
  late NoContentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoContentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Text(
        widget.content,
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
              color: widget.color,
              fontSize: widget.size.toDouble(),
              fontWeight: FontWeight.bold,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
            ),
      ),
    );
  }
}
