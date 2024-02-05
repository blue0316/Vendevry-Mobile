import '/components/search_client_card/search_client_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'search_client_page_widget.dart' show SearchClientPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchClientPageModel extends FlutterFlowModel<SearchClientPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for SearchClientCard component.
  late SearchClientCardModel searchClientCardModel1;
  // Model for SearchClientCard component.
  late SearchClientCardModel searchClientCardModel2;
  // Model for SearchClientCard component.
  late SearchClientCardModel searchClientCardModel3;
  // Model for SearchClientCard component.
  late SearchClientCardModel searchClientCardModel4;
  // Model for SearchClientCard component.
  late SearchClientCardModel searchClientCardModel5;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    searchClientCardModel1 =
        createModel(context, () => SearchClientCardModel());
    searchClientCardModel2 =
        createModel(context, () => SearchClientCardModel());
    searchClientCardModel3 =
        createModel(context, () => SearchClientCardModel());
    searchClientCardModel4 =
        createModel(context, () => SearchClientCardModel());
    searchClientCardModel5 =
        createModel(context, () => SearchClientCardModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    searchClientCardModel1.dispose();
    searchClientCardModel2.dispose();
    searchClientCardModel3.dispose();
    searchClientCardModel4.dispose();
    searchClientCardModel5.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
