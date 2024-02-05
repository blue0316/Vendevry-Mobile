import '/components/client_info_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'project_request_view_page_copy_widget.dart'
    show ProjectRequestViewPageCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProjectRequestViewPageCopyModel
    extends FlutterFlowModel<ProjectRequestViewPageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ClientInfoCard component.
  late ClientInfoCardModel clientInfoCardModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    clientInfoCardModel = createModel(context, () => ClientInfoCardModel());
  }

  void dispose() {
    unfocusNode.dispose();
    clientInfoCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
