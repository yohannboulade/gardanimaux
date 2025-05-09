import '/backend/backend.dart';
import '/components/card_pet_sitter/card_pet_sitter_widget.dart';
import '/components/main_menu_widget.dart';
import '/components/seash_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'explorer_model.dart';
export 'explorer_model.dart';

class ExplorerWidget extends StatefulWidget {
  const ExplorerWidget({super.key});

  static String routeName = 'explorer';
  static String routePath = '/explorer';

  @override
  State<ExplorerWidget> createState() => _ExplorerWidgetState();
}

class _ExplorerWidgetState extends State<ExplorerWidget> {
  late ExplorerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExplorerModel());

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
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                StreamBuilder<List<ProviderRecord>>(
                                  stream: queryProviderRecord(
                                    queryBuilder: (providerRecord) =>
                                        providerRecord.where(
                                      'visible',
                                      isEqualTo: true,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<ProviderRecord>
                                        wrapProviderRecordList = snapshot.data!;

                                    return Wrap(
                                      spacing: 5.0,
                                      runSpacing: 10.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.antiAlias,
                                      children: List.generate(
                                          wrapProviderRecordList.length,
                                          (wrapIndex) {
                                        final wrapProviderRecord =
                                            wrapProviderRecordList[wrapIndex];
                                        return CardPetSitterWidget(
                                          key: Key(
                                              'Keyl28_${wrapIndex}_of_${wrapProviderRecordList.length}'),
                                          providerRef:
                                              wrapProviderRecord.reference,
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 5.0)),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 50.0, 0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.seashModel,
                            updateCallback: () => safeSetState(() {}),
                            child: SeashWidget(),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.pets,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          FaIcon(
                            FontAwesomeIcons.cat,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          FaIcon(
                            FontAwesomeIcons.dog,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          FaIcon(
                            FontAwesomeIcons.dove,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          Icon(
                            Icons.star,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
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
    );
  }
}
