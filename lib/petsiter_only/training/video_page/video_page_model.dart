import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/main_menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/petsiter_only/training/add_video/add_video_widget.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:badges/badges.dart' as badges;
import 'video_page_widget.dart' show VideoPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VideoPageModel extends FlutterFlowModel<VideoPageWidget> {
  ///  Local state fields for this page.

  DocumentReference? referenceVideo;

  ///  State fields for stateful widgets in this page.

  // Model for main_menu component.
  late MainMenuModel mainMenuModel;
  // Stores action output result for [Custom Action - verifCertificate] action in Button widget.
  bool? verif;

  @override
  void initState(BuildContext context) {
    mainMenuModel = createModel(context, () => MainMenuModel());
  }

  @override
  void dispose() {
    mainMenuModel.dispose();
  }
}
