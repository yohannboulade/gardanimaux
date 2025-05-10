import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/certificate_widget.dart';
import '/components/info/info_widget.dart';
import '/components/lieu/lieu_widget.dart';
import '/components/separateur/separateur_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/petsiter_only/petsitter_component/list/list_widget.dart';
import '/user/booking/booking/booking_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'petsitter_widget.dart' show PetsitterWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PetsitterModel extends FlutterFlowModel<PetsitterWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for separateur component.
  late SeparateurModel separateurModel1;
  // Model for separateur component.
  late SeparateurModel separateurModel2;
  // Model for certificate component.
  late CertificateModel certificateModel;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Model for info component.
  late InfoModel infoModel;
  // Model for lieu component.
  late LieuModel lieuModel;

  @override
  void initState(BuildContext context) {
    separateurModel1 = createModel(context, () => SeparateurModel());
    separateurModel2 = createModel(context, () => SeparateurModel());
    certificateModel = createModel(context, () => CertificateModel());
    infoModel = createModel(context, () => InfoModel());
    lieuModel = createModel(context, () => LieuModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    separateurModel1.dispose();
    separateurModel2.dispose();
    certificateModel.dispose();
    infoModel.dispose();
    lieuModel.dispose();
  }
}
