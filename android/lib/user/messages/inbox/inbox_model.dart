import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/main_menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user/messages/inbox_message_item/inbox_message_item_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'inbox_widget.dart' show InboxWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InboxModel extends FlutterFlowModel<InboxWidget> {
  ///  State fields for stateful widgets in this page.

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
