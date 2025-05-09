import '/backend/backend.dart';
import '/components/card_pet_sitter/card_pet_sitter_widget.dart';
import '/components/certificate_widget.dart';
import '/components/main_menu_widget.dart';
import '/components/seash_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'explorer_widget.dart' show ExplorerWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExplorerModel extends FlutterFlowModel<ExplorerWidget> {
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
