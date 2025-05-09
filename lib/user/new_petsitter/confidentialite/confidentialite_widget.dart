import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'confidentialite_model.dart';
export 'confidentialite_model.dart';

class ConfidentialiteWidget extends StatefulWidget {
  const ConfidentialiteWidget({super.key});

  @override
  State<ConfidentialiteWidget> createState() => _ConfidentialiteWidgetState();
}

class _ConfidentialiteWidgetState extends State<ConfidentialiteWidget> {
  late ConfidentialiteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfidentialiteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlutterFlowIconButton(
                borderRadius: 20.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.close,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          Text(
            'Politique de confidentialité',
            style: FlutterFlowTheme.of(context).displayMedium.override(
                  font: GoogleFonts.rubik(
                    fontWeight:
                        FlutterFlowTheme.of(context).displayMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).displayMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).displayMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).displayMedium.fontStyle,
                ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius accumsan. Sed consequat augue dui, eu malesuada diam varius eu. Quisque molestie turpis tellus, vel lacinia urna hendrerit ut. Duis tempus vitae metus et mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius accumsan pharetra. Nulla id interdum leo. Nam egestas convallis orci. Praesent ipsum purus, sagittis sit amet malesuada vitae, rhoncus a sem.\n\nAliquam pellentesque viverra orci id placerat. Cras metus dui, vestibulum eget elit eu, vehicula eleifend est. Aliquam id ornare nisi. Phasellus non gravida purus, consequat elementum lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec nulla lectus, consequat pellentesque odio ac, ultricies pharetra ante. Pellentesque et diam non purus pretium scelerisque a eu purus. Nunc sem neque, pretium ac elementum quis, elementum sit amet orci. Sed id mollis enim. Suspendisse arcu arcu, pellentesque id fringilla et, imperdiet sit amet nisl. Fusce luctus lobortis urna.\n\nCurabitur vitae justo augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vivamus interdum lacus eget lorem feugiat dapibus. In mattis sem hendrerit sollicitudin mollis. Nulla facilisi. Nunc nec tellus nibh. Aenean maximus interdum massa, sed congue urna suscipit sit amet. Vestibulum volutpat purus ipsum, a feugiat nibh sollicitudin eu. Etiam placerat tempor nisi, et posuere eros accumsan nec. Duis at leo rhoncus est eleifend facilisis sit amet sed justo. Pellentesque ut convallis risus, nec rutrum lacus. Sed condimentum posuere dolor nec placerat.\n\nNulla facilisi. Morbi a tellus ex. Mauris finibus erat nisi, ac semper ipsum tristique ut. Phasellus sit amet elit odio. Donec ullamcorper, nisi vitae luctus viverra, lorem ipsum gravida odio, ut hendrerit lorem metus id ex. Quisque molestie convallis dolor pulvinar tincidunt. Cras tempus enim est, ac aliquam erat luctus ut. Donec sed nisl convallis, finibus odio eget, semper mi. Etiam at libero in lorem ullamcorper feugiat non vitae justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec a luctus felis, eget commodo metus. Duis sed hendrerit felis, a cursus turpis.\n\nEtiam ut nisl vitae leo venenatis cursus. Integer sollicitudin sagittis odio quis ultricies. Quisque mattis augue et elit congue, accumsan ullamcorper velit hendrerit. Nullam consequat, sem quis dictum pretium, tellus quam scelerisque est, efficitur fringilla nisi erat in dui. Vestibulum vehicula nec nulla et maximus. Aliquam ac tincidunt diam. Nullam convallis lacus quis tincidunt consequat. Morbi mattis egestas varius. Phasellus dapibus finibus elit, ut egestas diam sodales ut.',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.rubik(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ),
        ].divide(SizedBox(height: 10.0)).addToStart(SizedBox(height: 10.0)),
      ),
    );
  }
}
