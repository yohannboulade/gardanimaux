import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/card_pet_sitter/card_pet_sitter_widget.dart';
import '/components/certificate_widget.dart';
import '/components/main_menu_widget.dart';
import '/components/seash_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'favoris_model.dart';
export 'favoris_model.dart';

class FavorisWidget extends StatefulWidget {
  const FavorisWidget({super.key});

  static String routeName = 'favoris';
  static String routePath = '/favoris';

  @override
  State<FavorisWidget> createState() => _FavorisWidgetState();
}

class _FavorisWidgetState extends State<FavorisWidget> {
  late FavorisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavorisModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(currentJwtToken != null && currentJwtToken != '')) {
        context.pushNamed(AuthentificationWidget.routeName);
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SafeArea(
            top: true,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  decoration: BoxDecoration(),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        AuthUserStreamWidget(
                                          builder: (context) => Builder(
                                            builder: (context) {
                                              final providerList =
                                                  (currentUserDocument
                                                              ?.favoriteProvider
                                                              ?.toList() ??
                                                          [])
                                                      .toList();

                                              return Wrap(
                                                spacing: 0.0,
                                                runSpacing: 0.0,
                                                alignment: WrapAlignment.center,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.antiAlias,
                                                children: List.generate(
                                                    providerList.length,
                                                    (providerListIndex) {
                                                  final providerListItem =
                                                      providerList[
                                                          providerListIndex];
                                                  return Container(
                                                    width: 300.0,
                                                    child: Stack(
                                                      children: [
                                                        CardPetSitterWidget(
                                                          key: Key(
                                                              'Key2wz_${providerListIndex}_of_${providerList.length}'),
                                                          providerRef:
                                                              providerListItem,
                                                        ),
                                                        StreamBuilder<
                                                            ProviderRecord>(
                                                          stream: ProviderRecord
                                                              .getDocument(
                                                                  providerListItem),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }

                                                            final rowProviderRecord =
                                                                snapshot.data!;

                                                            return Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                if (rowProviderRecord
                                                                    .certificate)
                                                                  CertificateWidget(
                                                                    key: Key(
                                                                        'Keynty_${providerListIndex}_of_${providerList.length}'),
                                                                  ),
                                                                Flexible(
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      if ((currentUserDocument?.favoriteProvider?.toList() ??
                                                                              [])
                                                                          .contains(
                                                                              providerListItem))
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.all(10.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              await currentUserReference!.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'favorite_provider': FieldValue.arrayRemove([
                                                                                      providerListItem
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });

                                                                              await providerListItem.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'my_followers': FieldValue.arrayRemove([
                                                                                      currentUserReference
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.favorite,
                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                              size: 30.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if (!(currentUserDocument?.favoriteProvider?.toList() ??
                                                                              [])
                                                                          .contains(
                                                                              providerListItem))
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.all(10.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              await currentUserReference!.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'favorite_provider': FieldValue.arrayUnion([
                                                                                      providerListItem
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });

                                                                              await providerListItem.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'my_followers': FieldValue.arrayUnion([
                                                                                      currentUserReference
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.favorite_border,
                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                              size: 30.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                        ),
                                        if ((currentUserDocument
                                                        ?.favoriteProvider
                                                        ?.toList() ??
                                                    [])
                                                .length <=
                                            0)
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              'Vous n\'avez pas de favoris',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.rubik(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.seashModel,
                        updateCallback: () => safeSetState(() {}),
                        child: SeashWidget(),
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.mainMenuModel,
                    updateCallback: () => safeSetState(() {}),
                    child: MainMenuWidget(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
