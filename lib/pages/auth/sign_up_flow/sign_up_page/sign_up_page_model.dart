import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'sign_up_page_widget.dart' show SignUpPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';

class SignUpPageModel extends FlutterFlowModel<SignUpPageWidget> {
  ///  Local state fields for this page.

  String? shopLogo;

  bool isReadAgreement = false;

  bool isTermsAgreement = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for firstname widget.
  FocusNode? firstnameFocusNode;
  TextEditingController? firstnameController;
  String? Function(BuildContext, String?)? firstnameControllerValidator;
  String? _firstnameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'First name is required';
    }

    if (val.length > 20) {
      return 'Maximum 20 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for lastname widget.
  FocusNode? lastnameFocusNode;
  TextEditingController? lastnameController;
  String? Function(BuildContext, String?)? lastnameControllerValidator;
  String? _lastnameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Last name is required';
    }

    if (val.length > 20) {
      return 'Maximum 20 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for emailaddress widget.
  FocusNode? emailaddressFocusNode;
  TextEditingController? emailaddressController;
  String? Function(BuildContext, String?)? emailaddressControllerValidator;
  String? _emailaddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (val.length > 50) {
      return 'Maximum 50 characters allowed, currently ${val.length}.';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for phonenumber widget.
  FocusNode? phonenumberFocusNode;
  TextEditingController? phonenumberController;
  String? Function(BuildContext, String?)? phonenumberControllerValidator;
  String? _phonenumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 20) {
      return 'Maximum 20 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  String? _passwordControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 40) {
      return 'Maximum 40 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for passwordconfirmation widget.
  FocusNode? passwordconfirmationFocusNode;
  TextEditingController? passwordconfirmationController;
  late bool passwordconfirmationVisibility;
  String? Function(BuildContext, String?)?
      passwordconfirmationControllerValidator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  // State field(s) for state widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for StoreName widget.
  FocusNode? storeNameFocusNode;
  TextEditingController? storeNameController;
  String? Function(BuildContext, String?)? storeNameControllerValidator;
  // State field(s) for StoreDesc widget.
  FocusNode? storeDescFocusNode;
  TextEditingController? storeDescController;
  String? Function(BuildContext, String?)? storeDescControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for StoreRole widget.
  FocusNode? storeRoleFocusNode;
  TextEditingController? storeRoleController;
  String? Function(BuildContext, String?)? storeRoleControllerValidator;
  // State field(s) for StoreTaxID widget.
  FocusNode? storeTaxIDFocusNode;
  TextEditingController? storeTaxIDController;
  String? Function(BuildContext, String?)? storeTaxIDControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Signature widget.
  SignatureController? signatureController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  String uploadedSignatureUrl = '';
  // Stores action output result for [Backend Call - API (Register)] action in SignUpButton widget.
  ApiCallResponse? signupResult;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    firstnameControllerValidator = _firstnameControllerValidator;
    lastnameControllerValidator = _lastnameControllerValidator;
    emailaddressControllerValidator = _emailaddressControllerValidator;
    phonenumberControllerValidator = _phonenumberControllerValidator;
    passwordVisibility = false;
    passwordControllerValidator = _passwordControllerValidator;
    passwordconfirmationVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    firstnameFocusNode?.dispose();
    firstnameController?.dispose();

    lastnameFocusNode?.dispose();
    lastnameController?.dispose();

    emailaddressFocusNode?.dispose();
    emailaddressController?.dispose();

    phonenumberFocusNode?.dispose();
    phonenumberController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    passwordconfirmationFocusNode?.dispose();
    passwordconfirmationController?.dispose();

    addressFocusNode?.dispose();
    addressController?.dispose();

    cityFocusNode?.dispose();
    cityController?.dispose();

    storeNameFocusNode?.dispose();
    storeNameController?.dispose();

    storeDescFocusNode?.dispose();
    storeDescController?.dispose();

    storeRoleFocusNode?.dispose();
    storeRoleController?.dispose();

    storeTaxIDFocusNode?.dispose();
    storeTaxIDController?.dispose();

    signatureController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
