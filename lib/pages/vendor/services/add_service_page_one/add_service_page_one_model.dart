import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/no_content/no_content_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'add_service_page_one_widget.dart' show AddServicePageOneWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class AddServicePageOneModel extends FlutterFlowModel<AddServicePageOneWidget> {
  ///  Local state fields for this page.

  List<SearchServiceTypeStruct> searchResult = [];
  void addToSearchResult(SearchServiceTypeStruct item) =>
      searchResult.add(item);
  void removeFromSearchResult(SearchServiceTypeStruct item) =>
      searchResult.remove(item);
  void removeAtIndexFromSearchResult(int index) => searchResult.removeAt(index);
  void insertAtIndexInSearchResult(int index, SearchServiceTypeStruct item) =>
      searchResult.insert(index, item);
  void updateSearchResultAtIndex(
          int index, Function(SearchServiceTypeStruct) updateFn) =>
      searchResult[index] = updateFn(searchResult[index]);

  int? selectedServiceId;

  bool isEmpty = false;

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (SearchServices)] action in TextField widget.
  ApiCallResponse? searchApiResult;
  // Stores action output result for [Backend Call - API (SingleService)] action in IconButton widget.
  ApiCallResponse? serviceTemplateApiResult;
  // Model for NoContent component.
  late NoContentModel noContentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    noContentModel = createModel(context, () => NoContentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    noContentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
