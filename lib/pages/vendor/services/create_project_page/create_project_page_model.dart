import '/components/client_info_card_widget.dart';
import '/components/milestone_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_project_page_widget.dart' show CreateProjectPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateProjectPageModel extends FlutterFlowModel<CreateProjectPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ClientInfoCard component.
  late ClientInfoCardModel clientInfoCardModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for MilestoneCard component.
  late MilestoneCardModel milestoneCardModel1;
  // Model for MilestoneCard component.
  late MilestoneCardModel milestoneCardModel2;
  // Model for MilestoneCard component.
  late MilestoneCardModel milestoneCardModel3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    clientInfoCardModel = createModel(context, () => ClientInfoCardModel());
    milestoneCardModel1 = createModel(context, () => MilestoneCardModel());
    milestoneCardModel2 = createModel(context, () => MilestoneCardModel());
    milestoneCardModel3 = createModel(context, () => MilestoneCardModel());
  }

  void dispose() {
    unfocusNode.dispose();
    clientInfoCardModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    milestoneCardModel1.dispose();
    milestoneCardModel2.dispose();
    milestoneCardModel3.dispose();
    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
