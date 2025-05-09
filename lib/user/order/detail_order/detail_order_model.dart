import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/litige_widget.dart';
import '/components/main_menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'detail_order_widget.dart' show DetailOrderWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailOrderModel extends FlutterFlowModel<DetailOrderWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for main_menu component.
  late MainMenuModel mainMenuModel;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  MessagesRecord? messageExist;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  MessagesRecord? newMessage;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  UsersRecord? userIdProvider;
  // Stores action output result for [Backend Call - API (get charge)] action in Button widget.
  ApiCallResponse? pi01;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  ProviderRecord? provider;
  // Stores action output result for [Backend Call - API (get charge)] action in Button widget.
  ApiCallResponse? pi;
  // Stores action output result for [Backend Call - API (transfers fond)] action in Button widget.
  ApiCallResponse? transfert;
  // Stores action output result for [Backend Call - API (get charge)] action in Button widget.
  ApiCallResponse? pi02;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  RecommendationsRecord? newRecommendation;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<RecommendationsRecord>? list;
  // Stores action output result for [Custom Action - calculMoyenne] action in Button widget.
  double? newMoyenne;

  @override
  void initState(BuildContext context) {
    mainMenuModel = createModel(context, () => MainMenuModel());
  }

  @override
  void dispose() {
    mainMenuModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
