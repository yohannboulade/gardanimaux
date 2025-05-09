import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/profile_setting_detail_items/profile_setting_detail_items_widget.dart';
import '/components/profile_setting_items/profile_setting_items_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in profile widget.
  ProviderRecord? provider;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel1;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel2;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel3;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel4;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel5;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel6;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel7;
  // Model for ProfileSettingDetailItems component.
  late ProfileSettingDetailItemsModel profileSettingDetailItemsModel;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel8;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel9;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel10;

  @override
  void initState(BuildContext context) {
    profileSettingItemsModel1 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel2 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel3 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel4 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel5 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel6 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel7 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingDetailItemsModel =
        createModel(context, () => ProfileSettingDetailItemsModel());
    profileSettingItemsModel8 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel9 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel10 =
        createModel(context, () => ProfileSettingItemsModel());
  }

  @override
  void dispose() {
    profileSettingItemsModel1.dispose();
    profileSettingItemsModel2.dispose();
    profileSettingItemsModel3.dispose();
    profileSettingItemsModel4.dispose();
    profileSettingItemsModel5.dispose();
    profileSettingItemsModel6.dispose();
    profileSettingItemsModel7.dispose();
    profileSettingDetailItemsModel.dispose();
    profileSettingItemsModel8.dispose();
    profileSettingItemsModel9.dispose();
    profileSettingItemsModel10.dispose();
  }
}
