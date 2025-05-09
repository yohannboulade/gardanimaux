import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/stripe/payment_manager.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'booking_widget.dart' show BookingWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingModel extends FlutterFlowModel<BookingWidget> {
  ///  Local state fields for this component.

  DocumentReference? serviceId;

  ///  State fields for stateful widgets in this component.

  // State field(s) for main widget.
  ScrollController? main;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  // State field(s) for DropDown widget.
  double? dropDownValue;
  FormFieldController<double>? dropDownValueController;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  ServicesRecord? service;
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentId;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrdersRecord? newOrder;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  MessagesRecord? messages;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? userIdProvider;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MessagesRecord? newMessages;

  @override
  void initState(BuildContext context) {
    main = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    main?.dispose();
    listViewController?.dispose();
  }
}
