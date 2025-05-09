import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/main_menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/petsiter_only/petsitter_component/add_external_account/add_external_account_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'petsitter_data_widget.dart' show PetsitterDataWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PetsitterDataModel extends FlutterFlowModel<PetsitterDataWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (created link acount)] action in Button widget.
  ApiCallResponse? link;
  // Model for main_menu component.
  late MainMenuModel mainMenuModel;

  @override
  void initState(BuildContext context) {
    mainMenuModel = createModel(context, () => MainMenuModel());
  }

  @override
  void dispose() {
    mainMenuModel.dispose();
  }
}
