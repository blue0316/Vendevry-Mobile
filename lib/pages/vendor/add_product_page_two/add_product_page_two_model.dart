import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/structs/index.dart';
import '/components/option_price_modal/option_price_modal_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'add_product_page_two_widget.dart' show AddProductPageTwoWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddProductPageTwoModel extends FlutterFlowModel<AddProductPageTwoWidget> {
  ///  Local state fields for this page.

  Color pickedColor = Color(4281223101);

  ProductDefaultStruct? productTemplate;
  void updateProductTemplateStruct(Function(ProductDefaultStruct) updateFn) =>
      updateFn(productTemplate ??= ProductDefaultStruct());

  int? selectedParentCategoryId;

  List<ProductCustomOptionStruct> customOptions = [];
  void addToCustomOptions(ProductCustomOptionStruct item) =>
      customOptions.add(item);
  void removeFromCustomOptions(ProductCustomOptionStruct item) =>
      customOptions.remove(item);
  void removeAtIndexFromCustomOptions(int index) =>
      customOptions.removeAt(index);
  void insertAtIndexInCustomOptions(
          int index, ProductCustomOptionStruct item) =>
      customOptions.insert(index, item);
  void updateCustomOptionsAtIndex(
          int index, Function(ProductCustomOptionStruct) updateFn) =>
      customOptions[index] = updateFn(customOptions[index]);

  List<ProductColorOptionStruct> colorOptions = [];
  void addToColorOptions(ProductColorOptionStruct item) =>
      colorOptions.add(item);
  void removeFromColorOptions(ProductColorOptionStruct item) =>
      colorOptions.remove(item);
  void removeAtIndexFromColorOptions(int index) => colorOptions.removeAt(index);
  void insertAtIndexInColorOptions(int index, ProductColorOptionStruct item) =>
      colorOptions.insert(index, item);
  void updateColorOptionsAtIndex(
          int index, Function(ProductColorOptionStruct) updateFn) =>
      colorOptions[index] = updateFn(colorOptions[index]);

  List<String> images = [];
  void addToImages(String item) => images.add(item);
  void removeFromImages(String item) => images.remove(item);
  void removeAtIndexFromImages(int index) => images.removeAt(index);
  void insertAtIndexInImages(int index, String item) =>
      images.insert(index, item);
  void updateImagesAtIndex(int index, Function(String) updateFn) =>
      images[index] = updateFn(images[index]);

  int? productCategoryId;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  // State field(s) for categories widget.
  int? categoriesValue;
  FormFieldController<int>? categoriesValueController;
  // State field(s) for condition widget.
  String? conditionValue;
  FormFieldController<String>? conditionValueController;
  // State field(s) for subcategories widget.
  int? subcategoriesValue;
  FormFieldController<int>? subcategoriesValueController;
  // State field(s) for brand widget.
  FocusNode? brandFocusNode;
  TextEditingController? brandController;
  String? Function(BuildContext, String?)? brandControllerValidator;
  // State field(s) for option widget.
  FocusNode? optionFocusNode;
  TextEditingController? optionController;
  String? Function(BuildContext, String?)? optionControllerValidator;
  // State field(s) for color widget.
  FocusNode? colorFocusNode;
  TextEditingController? colorController;
  String? Function(BuildContext, String?)? colorControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for min_price widget.
  FocusNode? minPriceFocusNode;
  TextEditingController? minPriceController;
  String? Function(BuildContext, String?)? minPriceControllerValidator;
  // State field(s) for commission widget.
  FocusNode? commissionFocusNode;
  TextEditingController? commissionController;
  String? Function(BuildContext, String?)? commissionControllerValidator;
  // State field(s) for stock widget.
  FocusNode? stockFocusNode;
  TextEditingController? stockController;
  String? Function(BuildContext, String?)? stockControllerValidator;
  // State field(s) for shipping_rate widget.
  FocusNode? shippingRateFocusNode;
  TextEditingController? shippingRateController;
  String? Function(BuildContext, String?)? shippingRateControllerValidator;
  // Stores action output result for [Backend Call - API (AddVendorProduct)] action in Button widget.
  ApiCallResponse? newProduct;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    titleFocusNode?.dispose();
    titleController?.dispose();

    brandFocusNode?.dispose();
    brandController?.dispose();

    optionFocusNode?.dispose();
    optionController?.dispose();

    colorFocusNode?.dispose();
    colorController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    minPriceFocusNode?.dispose();
    minPriceController?.dispose();

    commissionFocusNode?.dispose();
    commissionController?.dispose();

    stockFocusNode?.dispose();
    stockController?.dispose();

    shippingRateFocusNode?.dispose();
    shippingRateController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
