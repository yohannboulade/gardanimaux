import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'new_petsitter2_widget.dart' show NewPetsitter2Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewPetsitter2Model extends FlutterFlowModel<NewPetsitter2Widget> {
  ///  Local state fields for this page.

  bool hebergement = false;

  bool promenade = false;

  bool visite = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ServicesRecord? serviceHebergement;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ServicesRecord? servicePromenade;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ServicesRecord? serviceVisite;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
