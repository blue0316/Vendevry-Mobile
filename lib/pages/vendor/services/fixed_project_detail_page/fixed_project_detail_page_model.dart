import '/components/client_info_card_widget.dart';
import '/components/f_inished_milestone_card_widget.dart';
import '/components/un_f_inished_milestone_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'fixed_project_detail_page_widget.dart'
    show FixedProjectDetailPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FixedProjectDetailPageModel
    extends FlutterFlowModel<FixedProjectDetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ClientInfoCard component.
  late ClientInfoCardModel clientInfoCardModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for FInishedMilestoneCard component.
  late FInishedMilestoneCardModel fInishedMilestoneCardModel1;
  // Model for FInishedMilestoneCard component.
  late FInishedMilestoneCardModel fInishedMilestoneCardModel2;
  // Model for UnFInishedMilestoneCard component.
  late UnFInishedMilestoneCardModel unFInishedMilestoneCardModel1;
  // Model for UnFInishedMilestoneCard component.
  late UnFInishedMilestoneCardModel unFInishedMilestoneCardModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    clientInfoCardModel = createModel(context, () => ClientInfoCardModel());
    fInishedMilestoneCardModel1 =
        createModel(context, () => FInishedMilestoneCardModel());
    fInishedMilestoneCardModel2 =
        createModel(context, () => FInishedMilestoneCardModel());
    unFInishedMilestoneCardModel1 =
        createModel(context, () => UnFInishedMilestoneCardModel());
    unFInishedMilestoneCardModel2 =
        createModel(context, () => UnFInishedMilestoneCardModel());
  }

  void dispose() {
    unfocusNode.dispose();
    clientInfoCardModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    fInishedMilestoneCardModel1.dispose();
    fInishedMilestoneCardModel2.dispose();
    unFInishedMilestoneCardModel1.dispose();
    unFInishedMilestoneCardModel2.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
