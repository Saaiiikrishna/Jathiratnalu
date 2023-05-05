import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnterEmailPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for resetPasswordEmail widget.
  TextEditingController? resetPasswordEmailController;
  String? Function(BuildContext, String?)?
      resetPasswordEmailControllerValidator;
  String? _resetPasswordEmailControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    resetPasswordEmailControllerValidator =
        _resetPasswordEmailControllerValidator;
  }

  void dispose() {
    resetPasswordEmailController?.dispose();
  }

  /// Additional helper methods are added here.

}
