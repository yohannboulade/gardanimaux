import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'separateur_model.dart';
export 'separateur_model.dart';

class SeparateurWidget extends StatefulWidget {
  const SeparateurWidget({super.key});

  @override
  State<SeparateurWidget> createState() => _SeparateurWidgetState();
}

class _SeparateurWidgetState extends State<SeparateurWidget> {
  late SeparateurModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeparateurModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.8,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Divider(
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).secondary,
          ),
        ],
      ),
    );
  }
}
