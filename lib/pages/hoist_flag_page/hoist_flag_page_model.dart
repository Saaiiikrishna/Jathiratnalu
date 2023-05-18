import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HoistFlagPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Segment widget.
  String? segmentValue;
  FormFieldController<String>? segmentValueController;
  // State field(s) for Instrument widget.
  String? instrumentValue;
  FormFieldController<String>? instrumentValueController;
  // State field(s) for call widget.
  String? callValue;
  FormFieldController<String>? callValueController;
  // State field(s) for Product widget.
  String? productValue;
  FormFieldController<String>? productValueController;
  // State field(s) for Quantity widget.
  String? quantityValue;
  FormFieldController<String>? quantityValueController;
  // State field(s) for ExptdTime widget.
  String? exptdTimeValue;
  FormFieldController<String>? exptdTimeValueController;
  // State field(s) for Risk2Reward widget.
  String? risk2RewardValue;
  FormFieldController<String>? risk2RewardValueController;
  // State field(s) for Probability widget.
  String? probabilityValue;
  FormFieldController<String>? probabilityValueController;
  // State field(s) for LimitPrice widget.
  TextEditingController? limitPriceController;
  String? Function(BuildContext, String?)? limitPriceControllerValidator;
  // State field(s) for StopLoss widget.
  TextEditingController? stopLossController;
  String? Function(BuildContext, String?)? stopLossControllerValidator;
  // State field(s) for Target1 widget.
  TextEditingController? target1Controller;
  String? Function(BuildContext, String?)? target1ControllerValidator;
  // State field(s) for Target2 widget.
  TextEditingController? target2Controller;
  String? Function(BuildContext, String?)? target2ControllerValidator;
  // State field(s) for Target3 widget.
  TextEditingController? target3Controller;
  String? Function(BuildContext, String?)? target3ControllerValidator;
  // State field(s) for EntryGuidance widget.
  TextEditingController? entryGuidanceController;
  String? Function(BuildContext, String?)? entryGuidanceControllerValidator;
  // State field(s) for Note widget.
  TextEditingController? noteController;
  String? Function(BuildContext, String?)? noteControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    limitPriceController?.dispose();
    stopLossController?.dispose();
    target1Controller?.dispose();
    target2Controller?.dispose();
    target3Controller?.dispose();
    entryGuidanceController?.dispose();
    noteController?.dispose();
  }

  /// Additional helper methods are added here.

}
