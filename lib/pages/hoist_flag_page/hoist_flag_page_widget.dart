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
import 'hoist_flag_page_model.dart';
export 'hoist_flag_page_model.dart';

class HoistFlagPageWidget extends StatefulWidget {
  const HoistFlagPageWidget({Key? key}) : super(key: key);

  @override
  _HoistFlagPageWidgetState createState() => _HoistFlagPageWidgetState();
}

class _HoistFlagPageWidgetState extends State<HoistFlagPageWidget> {
  late HoistFlagPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HoistFlagPageModel());

    _model.limitPriceController ??= TextEditingController();
    _model.stopLossController ??= TextEditingController();
    _model.target1Controller ??= TextEditingController();
    _model.target2Controller ??= TextEditingController();
    _model.target3Controller ??= TextEditingController();
    _model.entryGuidanceController ??= TextEditingController();
    _model.noteController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Create Flag',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).headlineMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 16.0, 0.0, 16.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.segmentValueController ??=
                              FormFieldController<String>(null),
                          options: ['Equity', 'Options', 'Futures', 'MCX'],
                          onChanged: (val) =>
                              setState(() => _model.segmentValue = val),
                          width: double.infinity,
                          height: 50.0,
                          searchHintTextStyle: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyLargeFamily),
                              ),
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintText: 'Select Segment',
                          searchHintText: 'Search',
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 0.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.instrumentValueController ??=
                              FormFieldController<String>(null),
                          options: functions
                              .newCustomFunction2(_model.segmentValue)!,
                          onChanged: (val) =>
                              setState(() => _model.instrumentValue = val),
                          width: double.infinity,
                          height: 50.0,
                          searchHintTextStyle: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyLargeFamily),
                              ),
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintText: 'Select any Instrument',
                          searchHintText: 'Search',
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 0.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isSearchable: true,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.callValueController ??=
                              FormFieldController<String>(null),
                          options: ['BUY', 'SELL'],
                          onChanged: (val) =>
                              setState(() => _model.callValue = val),
                          width: double.infinity,
                          height: 50.0,
                          searchHintTextStyle: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyLargeFamily),
                              ),
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintText: 'Select Call Option',
                          searchHintText: 'Search',
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 0.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlutterFlowDropDown<String>(
                              controller: _model.productValueController ??=
                                  FormFieldController<String>(null),
                              options: ['Intraday', 'Delivery'],
                              onChanged: (val) =>
                                  setState(() => _model.productValue = val),
                              width: 180.0,
                              height: 50.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Select Product',
                              searchHintText: 'Search for an item...',
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 0.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.quantityValueController ??=
                                  FormFieldController<String>(null),
                              options: [
                                '25% Quantity',
                                'Half Quantity',
                                'Full Quantity'
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.quantityValue = val),
                              width: 180.0,
                              height: 50.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Select Quantity',
                              searchHintText: 'Search for an item...',
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 0.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FlutterFlowDropDown<String>(
                              controller: _model.exptdTimeValueController ??=
                                  FormFieldController<String>(null),
                              options: functions
                                  .newCustomFunction(_model.productValue)!,
                              onChanged: (val) =>
                                  setState(() => _model.exptdTimeValue = val),
                              width: 120.0,
                              height: 50.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Expected time',
                              searchHintText: 'Search for an item...',
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 0.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.risk2RewardValueController ??=
                                  FormFieldController<String>(null),
                              options: [
                                '1 : 1',
                                '1 : 2',
                                '1 : 3',
                                '1 : 4',
                                '1 : 5',
                                '1 : 6',
                                '1 : 7',
                                '1 : 8',
                                '1 : 9',
                                '1 : 10',
                                '1 : 11',
                                '1 : 12',
                                '1 : 13',
                                '1 : 14',
                                '1 : 15',
                                '1 : 16',
                                '1 : 17',
                                '1 : 18',
                                '1 : 19',
                                '1 : 20',
                                '1 : 21',
                                '1 : 22',
                                '1 : 23',
                                '1 : 24',
                                '1 : 25',
                                '1 : 26',
                                '1 : 27',
                                '1 : 28',
                                '1 : 29',
                                '1 : 30',
                                '1 : 31',
                                '1 : 32',
                                '1 : 33',
                                '1 : 34',
                                '1 : 35',
                                '1 : 36',
                                '1 : 37',
                                '1 : 38',
                                '1 : 39',
                                '1 : 40',
                                '1 : 41',
                                '1 : 42',
                                '1 : 43',
                                '1 : 44',
                                '1 : 45',
                                '1 : 46',
                                '1 : 47',
                                '1 : 48',
                                '1 : 49',
                                '1 : 50',
                                '1 : 51',
                                '1 : 52',
                                '1 : 53',
                                '1 : 54',
                                '1 : 55',
                                '1 : 56',
                                '1 : 57',
                                '1 : 58',
                                '1 : 59',
                                '1 : 60',
                                '1 : 61',
                                '1 : 62',
                                '1 : 63',
                                '1 : 64',
                                '1 : 65',
                                '1 : 66',
                                '1 : 67',
                                '1 : 68',
                                '1 : 69',
                                '1 : 70',
                                '1 : 71',
                                '1 : 72',
                                '1 : 73',
                                '1 : 74',
                                '1 : 75',
                                '1 : 76',
                                '1 : 77',
                                '1 : 78',
                                '1 : 79',
                                '1 : 80',
                                '1 : 81',
                                '1 : 82',
                                '1 : 83',
                                '1 : 84',
                                '1 : 85',
                                '1 : 86',
                                '1 : 87',
                                '1 : 88',
                                '1 : 89',
                                '1 : 90',
                                '1 : 91',
                                '1 : 92',
                                '1 : 93',
                                '1 : 94',
                                '1 : 95',
                                '1 : 96',
                                '1 : 97',
                                '1 : 98',
                                '1 : 99',
                                '1 : 100'
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.risk2RewardValue = val),
                              width: 120.0,
                              height: 50.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Risk to Reward',
                              searchHintText: 'Search for an item...',
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 0.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.probabilityValueController ??=
                                  FormFieldController<String>(null),
                              options: [
                                '30%',
                                '40%',
                                '50%',
                                '60%',
                                '70%',
                                '80%',
                                '90%',
                                '100%'
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.probabilityValue = val),
                              width: 120.0,
                              height: 50.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Probability',
                              searchHintText: 'Search for an item...',
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 0.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _model.limitPriceController,
                                textCapitalization: TextCapitalization.none,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Enter Limit Price',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodySmall,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                keyboardType: TextInputType.number,
                                validator: _model.limitPriceControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: _model.stopLossController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Enter Stop Loss',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodySmall,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                keyboardType: TextInputType.number,
                                validator: _model.stopLossControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _model.target1Controller,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Enter First target',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodySmall,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              keyboardType: TextInputType.number,
                              validator: _model.target1ControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: _model.target2Controller,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Enter Second target',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodySmall,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              keyboardType: TextInputType.number,
                              validator: _model.target2ControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: _model.target3Controller,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Enter Third target',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodySmall,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              keyboardType: TextInputType.number,
                              validator: _model.target3ControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 16.0, 0.0, 16.0),
                        child: Container(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.entryGuidanceController,
                            textCapitalization: TextCapitalization.sentences,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Entry Guidance',
                              hintText: 'Write how to execute your entry...',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context).titleMedium,
                            textAlign: TextAlign.start,
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            validator: _model.entryGuidanceControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Container(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.noteController,
                            textCapitalization: TextCapitalization.sentences,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Note',
                              hintText: 'Enter safety notes',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context).titleMedium,
                            textAlign: TextAlign.start,
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            validator: _model.noteControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          if (_model.segmentValue == 'Equity') {
                            final equityCreateData = createEquityRecordData(
                              entryGuidance:
                                  _model.entryGuidanceController.text,
                              note: _model.noteController.text,
                              createdAt: dateTimeFromSecondsSinceEpoch(
                                  getCurrentTimestamp.secondsSinceEpoch),
                              call: _model.callValue,
                              limitPrice: double.tryParse(
                                  _model.limitPriceController.text),
                              stopLoss: double.tryParse(
                                  _model.stopLossController.text),
                              target1: double.tryParse(
                                  _model.target1Controller.text),
                              target2: double.tryParse(
                                  _model.target2Controller.text),
                              target3: double.tryParse(
                                  _model.target3Controller.text),
                              quantity: _model.quantityValue,
                              product: _model.productValue,
                              exptdTime: _model.exptdTimeValue,
                              rewardtoratio: _model.risk2RewardValue,
                              probability: _model.probabilityValue,
                              instrument: _model.instrumentValue,
                              markets: _model.segmentValue,
                              name: currentUserDisplayName,
                            );
                            await EquityRecord.collection
                                .doc()
                                .set(equityCreateData);
                          } else {
                            if (_model.segmentValue == 'Options') {
                              final optionsCreateData = createOptionsRecordData(
                                entryGuidance:
                                    _model.entryGuidanceController.text,
                                note: _model.noteController.text,
                                createdAt: dateTimeFromSecondsSinceEpoch(
                                    getCurrentTimestamp.secondsSinceEpoch),
                                call: _model.callValue,
                                limitPrice: double.tryParse(
                                    _model.limitPriceController.text),
                                stopLoss: double.tryParse(
                                    _model.stopLossController.text),
                                target1: double.tryParse(
                                    _model.target1Controller.text),
                                target2: double.tryParse(
                                    _model.target2Controller.text),
                                target3: double.tryParse(
                                    _model.target3Controller.text),
                                quantity: _model.quantityValue,
                                product: _model.productValue,
                                exptdTime: _model.exptdTimeValue,
                                rewardtoratio: _model.risk2RewardValue,
                                probability: _model.probabilityValue,
                                instrument: _model.instrumentValue,
                                markets: _model.segmentValue,
                                name: currentUserDisplayName,
                              );
                              await OptionsRecord.collection
                                  .doc()
                                  .set(optionsCreateData);
                            } else {
                              if (_model.segmentValue == 'Futures') {
                                final futuresCreateData =
                                    createFuturesRecordData(
                                  entryGuidance:
                                      _model.entryGuidanceController.text,
                                  note: _model.noteController.text,
                                  createdAt: dateTimeFromSecondsSinceEpoch(
                                      getCurrentTimestamp.secondsSinceEpoch),
                                  call: _model.callValue,
                                  limitPrice: double.tryParse(
                                      _model.limitPriceController.text),
                                  stopLoss: double.tryParse(
                                      _model.stopLossController.text),
                                  target1: double.tryParse(
                                      _model.target1Controller.text),
                                  target2: double.tryParse(
                                      _model.target2Controller.text),
                                  target3: double.tryParse(
                                      _model.target3Controller.text),
                                  quantity: _model.quantityValue,
                                  product: _model.productValue,
                                  exptdTime: _model.exptdTimeValue,
                                  rewardtoratio: _model.risk2RewardValue,
                                  probability: _model.probabilityValue,
                                  instrument: _model.instrumentValue,
                                  markets: _model.segmentValue,
                                  name: currentUserDisplayName,
                                );
                                await FuturesRecord.collection
                                    .doc()
                                    .set(futuresCreateData);
                              }
                            }
                          }
                        },
                        text: 'Create Flag',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 60.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
