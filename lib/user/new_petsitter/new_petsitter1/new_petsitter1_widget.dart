import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_petsitter1_model.dart';
export 'new_petsitter1_model.dart';

class NewPetsitter1Widget extends StatefulWidget {
  const NewPetsitter1Widget({super.key});

  static String routeName = 'newPetsitter1';
  static String routePath = '/newPetsitter1';

  @override
  State<NewPetsitter1Widget> createState() => _NewPetsitter1WidgetState();
}

class _NewPetsitter1WidgetState extends State<NewPetsitter1Widget> {
  late NewPetsitter1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewPetsitter1Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (currentUserDocument?.isProvider != null) {
        _model.provider = await ProviderRecord.getDocumentOnce(
            currentUserDocument!.isProvider!);
        if (_model.provider?.adress != null && _model.provider?.adress != '') {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text('Nouveau petsitter'),
                    content: Text(
                        'Vous avez déjà enregistré une adresse pour votre activité. Voulez-vous resaisir une adresse ou passer à l\'étape suivante ?'),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: Text('Resaisir l\'adresse'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: Text('Passer à l\'étape suivante'),
                      ),
                    ],
                  );
                },
              ) ??
              false;
          if (confirmDialogResponse) {
            context.pushNamed(NewPetsitter2Widget.routeName);
          }
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/logo1.png',
                    width: double.infinity,
                    height: 100.0,
                    fit: BoxFit.contain,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/chat02.png',
                    width: double.infinity,
                    height: 200.0,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.75,
                  constraints: BoxConstraints(
                    maxWidth: 800.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: FlutterFlowPlacePicker(
                    iOSGoogleMapsApiKey:
                        'AIzaSyCGYmoxDfHgZioCG1qTzYXRfqTkghh_XMQ',
                    androidGoogleMapsApiKey:
                        'AIzaSyAWjWePA844yvwC4NAZ8EcqUsOqbWhwSXo',
                    webGoogleMapsApiKey:
                        'AIzaSyBs37amq3Ff3ip-ggfoIXxgn98usMdntao',
                    onSelect: (place) async {
                      safeSetState(() => _model.placePickerValue = place);
                    },
                    defaultText: 'Où est votre lieux de garde ?',
                    icon: Icon(
                      Icons.place,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 16.0,
                    ),
                    buttonOptions: FFButtonOptions(
                      width: 200.0,
                      height: 40.0,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.rubik(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).accent2,
                      icon: Icon(
                        Icons.close,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.safePop();
                      },
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        if (currentUserDocument?.isProvider != null) {
                          await currentUserDocument!.isProvider!
                              .update(createProviderRecordData(
                            adress: _model.placePickerValue.address,
                            adressName: _model.placePickerValue.name,
                            codeZip: _model.placePickerValue.zipCode,
                            city: _model.placePickerValue.city,
                            latLng: _model.placePickerValue.latLng,
                          ));
                        } else {
                          var providerRecordReference =
                              ProviderRecord.collection.doc();
                          await providerRecordReference
                              .set(createProviderRecordData(
                            createdTime: getCurrentTimestamp,
                            adress: _model.placePickerValue.address,
                            adressName: _model.placePickerValue.address,
                            codeZip: _model.placePickerValue.zipCode,
                            city: _model.placePickerValue.city,
                            latLng: _model.placePickerValue.latLng,
                          ));
                          _model.newProvider =
                              ProviderRecord.getDocumentFromData(
                                  createProviderRecordData(
                                    createdTime: getCurrentTimestamp,
                                    adress: _model.placePickerValue.address,
                                    adressName: _model.placePickerValue.address,
                                    codeZip: _model.placePickerValue.zipCode,
                                    city: _model.placePickerValue.city,
                                    latLng: _model.placePickerValue.latLng,
                                  ),
                                  providerRecordReference);

                          await currentUserReference!
                              .update(createUsersRecordData(
                            isProvider: _model.newProvider?.reference,
                          ));
                        }

                        context.pushNamed(NewPetsitter2Widget.routeName);

                        safeSetState(() {});
                      },
                      text: 'Continuer',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).tertiary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.rubik(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 25.0)),
            ),
          ),
        ),
      ),
    );
  }
}
