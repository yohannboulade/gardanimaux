import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/main_menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user/order/line_order_item/line_order_item_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'orders_model.dart';
export 'orders_model.dart';

class OrdersWidget extends StatefulWidget {
  const OrdersWidget({super.key});

  static String routeName = 'orders';
  static String routePath = '/orders';

  @override
  State<OrdersWidget> createState() => _OrdersWidgetState();
}

class _OrdersWidgetState extends State<OrdersWidget> {
  late OrdersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrdersModel());

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
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Commandes',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.rubik(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
                wrapWithModel(
                  model: _model.mainMenuModel,
                  updateCallback: () => safeSetState(() {}),
                  child: MainMenuWidget(),
                ),
              ],
            ),
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
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
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Commandes client',
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .displayMedium
                                        .override(
                                          font: GoogleFonts.rubik(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .displayMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .displayMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .displayMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .displayMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  AuthUserStreamWidget(
                                    builder: (context) => Builder(
                                      builder: (context) {
                                        final myOrders = (currentUserDocument
                                                    ?.myOrders
                                                    ?.toList() ??
                                                [])
                                            .toList();

                                        return ListView.separated(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: myOrders.length,
                                          separatorBuilder: (_, __) =>
                                              SizedBox(height: 8.0),
                                          itemBuilder:
                                              (context, myOrdersIndex) {
                                            final myOrdersItem =
                                                myOrders[myOrdersIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  DetailOrderWidget.routeName,
                                                  queryParameters: {
                                                    'orderId': serializeParam(
                                                      myOrdersItem,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: LineOrderItemWidget(
                                                key: Key(
                                                    'Keyre0_${myOrdersIndex}_of_${myOrders.length}'),
                                                orderId: myOrdersItem,
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (currentUserDocument?.isProvider != null)
                              AuthUserStreamWidget(
                                builder: (context) =>
                                    StreamBuilder<ProviderRecord>(
                                  stream: ProviderRecord.getDocument(
                                      currentUserDocument!.isProvider!),
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

                                    final containerProviderRecord =
                                        snapshot.data!;

                                    return Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Commandes prestataire',
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .displayMedium
                                                .override(
                                                  font: GoogleFonts.rubik(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .displayMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .displayMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .displayMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .displayMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final myOrders =
                                                  containerProviderRecord
                                                      .myOrders
                                                      .toList();

                                              return ListView.separated(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 8.0),
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: myOrders.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(height: 8.0),
                                                itemBuilder:
                                                    (context, myOrdersIndex) {
                                                  final myOrdersItem =
                                                      myOrders[myOrdersIndex];
                                                  return InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        DetailOrderWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'orderId':
                                                              serializeParam(
                                                            myOrdersItem,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: LineOrderItemWidget(
                                                      key: Key(
                                                          'Keynd3_${myOrdersIndex}_of_${myOrders.length}'),
                                                      orderId: myOrdersItem,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                          ]
                              .divide(SizedBox(height: 8.0))
                              .addToStart(SizedBox(height: 8.0)),
                        ),
                      ),
                    ),
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
