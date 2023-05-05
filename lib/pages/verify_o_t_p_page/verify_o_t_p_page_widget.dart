import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'verify_o_t_p_page_model.dart';
export 'verify_o_t_p_page_model.dart';

class VerifyOTPPageWidget extends StatefulWidget {
  const VerifyOTPPageWidget({
    Key? key,
    required this.mobileNumber,
  }) : super(key: key);

  final String? mobileNumber;

  @override
  _VerifyOTPPageWidgetState createState() => _VerifyOTPPageWidgetState();
}

class _VerifyOTPPageWidgetState extends State<VerifyOTPPageWidget> {
  late VerifyOTPPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerifyOTPPageModel());
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
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Container(
                width: 325.0,
                height: 250.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          border: Border.all(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'OTP has been sent to ${widget.mobileNumber}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: PinCodeTextField(
                                autoDisposeControllers: false,
                                appContext: context,
                                length: 6,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily),
                                    ),
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                enableActiveFill: false,
                                autoFocus: true,
                                enablePinAutofill: false,
                                errorTextSpace: 16.0,
                                showCursor: true,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                obscureText: false,
                                hintCharacter: '-',
                                pinTheme: PinTheme(
                                  fieldHeight: 40.0,
                                  fieldWidth: 40.0,
                                  borderWidth: 2.0,
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: PinCodeFieldShape.box,
                                  activeColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  inactiveColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  selectedColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  activeFillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  inactiveFillColor:
                                      FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                  selectedFillColor:
                                      FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                ),
                                controller: _model.pinCodeController,
                                onChanged: (_) {},
                                onCompleted: (_) async {
                                  GoRouter.of(context).prepareAuthEvent();
                                  final smsCodeVal =
                                      _model.pinCodeController!.text;
                                  if (smsCodeVal == null ||
                                      smsCodeVal.isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                            'Enter SMS verification code.'),
                                      ),
                                    );
                                    return;
                                  }
                                  final phoneVerifiedUser =
                                      await authManager.verifySmsCode(
                                    context: context,
                                    smsCode: smsCodeVal,
                                  );
                                  if (phoneVerifiedUser == null) {
                                    return;
                                  }

                                  context.goNamedAuth('flagsPage', mounted);
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: _model.pinCodeControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Text(
                                'Resend OTP',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      decoration: TextDecoration.underline,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 18.0, 12.0, 18.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                    text: 'Cancel',
                                    options: FFButtonOptions(
                                      width: 130.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      final smsCodeVal =
                                          _model.pinCodeController!.text;
                                      if (smsCodeVal == null ||
                                          smsCodeVal.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                                'Enter SMS verification code.'),
                                          ),
                                        );
                                        return;
                                      }
                                      final phoneVerifiedUser =
                                          await authManager.verifySmsCode(
                                        context: context,
                                        smsCode: smsCodeVal,
                                      );
                                      if (phoneVerifiedUser == null) {
                                        return;
                                      }

                                      context.goNamedAuth('flagsPage', mounted);
                                    },
                                    text: 'Verify',
                                    options: FFButtonOptions(
                                      width: 130.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
