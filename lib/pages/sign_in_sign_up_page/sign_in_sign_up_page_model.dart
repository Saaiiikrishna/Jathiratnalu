import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignInSignUpPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for createEmailAddress widget.
  TextEditingController? createEmailAddressController;
  String? Function(BuildContext, String?)?
      createEmailAddressControllerValidator;
  String? _createEmailAddressControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for createPassword widget.
  TextEditingController? createPasswordController;
  late bool createPasswordVisibility;
  String? Function(BuildContext, String?)? createPasswordControllerValidator;
  String? _createPasswordControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Mobile widget.
  TextEditingController? mobileController;
  String? Function(BuildContext, String?)? mobileControllerValidator;
  String? _mobileControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }
    if (val.length > 10) {
      return 'Maximum 10 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for loginEmail widget.
  TextEditingController? loginEmailController;
  String? Function(BuildContext, String?)? loginEmailControllerValidator;
  // State field(s) for loginPassword widget.
  TextEditingController? loginPasswordController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nameControllerValidator = _nameControllerValidator;
    createEmailAddressControllerValidator =
        _createEmailAddressControllerValidator;
    createPasswordVisibility = false;
    createPasswordControllerValidator = _createPasswordControllerValidator;
    mobileControllerValidator = _mobileControllerValidator;
    loginPasswordVisibility = false;
  }

  void dispose() {
    nameController?.dispose();
    createEmailAddressController?.dispose();
    createPasswordController?.dispose();
    mobileController?.dispose();
    loginEmailController?.dispose();
    loginPasswordController?.dispose();
  }

  /// Additional helper methods are added here.

}
