import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'menu_service_widget.dart' show MenuServiceWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuServiceModel extends FlutterFlowModel<MenuServiceWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  ProviderRecord? provider;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<PricesRecord>? allPrices;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
