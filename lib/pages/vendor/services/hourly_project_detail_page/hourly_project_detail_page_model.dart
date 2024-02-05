import '/components/client_info_card_widget.dart';
import '/components/f_inished_hourly_milestone_card_widget.dart';
import '/components/un_f_inished_milestone_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'hourly_project_detail_page_widget.dart'
    show HourlyProjectDetailPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HourlyProjectDetailPageModel
    extends FlutterFlowModel<HourlyProjectDetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ClientInfoCard component.
  late ClientInfoCardModel clientInfoCardModel;
  // Model for FInishedHourlyMilestoneCard component.
  late FInishedHourlyMilestoneCardModel fInishedHourlyMilestoneCardModel;
  // Model for UnFInishedMilestoneCard component.
  late UnFInishedMilestoneCardModel unFInishedMilestoneCardModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    clientInfoCardModel = createModel(context, () => ClientInfoCardModel());
    fInishedHourlyMilestoneCardModel =
        createModel(context, () => FInishedHourlyMilestoneCardModel());
    unFInishedMilestoneCardModel =
        createModel(context, () => UnFInishedMilestoneCardModel());
  }

  void dispose() {
    unfocusNode.dispose();
    clientInfoCardModel.dispose();
    fInishedHourlyMilestoneCardModel.dispose();
    unFInishedMilestoneCardModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
