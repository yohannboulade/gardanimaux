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
import 'favoris_widget.dart' show FavorisWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavorisModel extends FlutterFlowModel<FavorisWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for seash component.
  late SeashModel seashModel;
  // Model for main_menu component.
  late MainMenuModel mainMenuModel;

  @override
  void initState(BuildContext context) {
    seashModel = createModel(context, () => SeashModel());
    mainMenuModel = createModel(context, () => MainMenuModel());
  }

  @override
  void dispose() {
    seashModel.dispose();
    mainMenuModel.dispose();
  }
}
