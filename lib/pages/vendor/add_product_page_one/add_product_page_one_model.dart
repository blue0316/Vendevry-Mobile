import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/no_content/no_content_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'add_product_page_one_widget.dart' show AddProductPageOneWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class AddProductPageOneModel extends FlutterFlowModel<AddProductPageOneWidget> {
  ///  Local state fields for this page.

  List<SearchProductTypeStruct> searchResult = [];
  void addToSearchResult(SearchProductTypeStruct item) =>
      searchResult.add(item);
  void removeFromSearchResult(SearchProductTypeStruct item) =>
      searchResult.remove(item);
  void removeAtIndexFromSearchResult(int index) => searchResult.removeAt(index);
  void insertAtIndexInSearchResult(int index, SearchProductTypeStruct item) =>
      searchResult.insert(index, item);
  void updateSearchResultAtIndex(
          int index, Function(SearchProductTypeStruct) updateFn) =>
      searchResult[index] = updateFn(searchResult[index]);

  int? selectedProductId;

  bool isEmpty = false;

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (SearchProducts)] action in TextField widget.
  ApiCallResponse? searchApiResult;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
