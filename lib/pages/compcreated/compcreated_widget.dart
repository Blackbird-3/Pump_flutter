import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'compcreated_model.dart';
export 'compcreated_model.dart';

class CompcreatedWidget extends StatefulWidget {
  const CompcreatedWidget({Key? key}) : super(key: key);

  @override
  _CompcreatedWidgetState createState() => _CompcreatedWidgetState();
}

class _CompcreatedWidgetState extends State<CompcreatedWidget>
    with TickerProviderStateMixin {
  late CompcreatedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'iconOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompcreatedModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25.0, 50.0, 25.0, 0.0),
              child: Container(
                width: 380.0,
                height: 214.0,
                decoration: BoxDecoration(
                  color: Color(0xFF03045E),
                  borderRadius: BorderRadius.circular(15.0),
                  shape: BoxShape.rectangle,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Text(
                    'Complaint Created Successfully',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).displayMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).displayMediumFamily,
                          color: Colors.white,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).displayMediumFamily),
                        ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
              child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Color(0xFFD3E5EF),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.done_outline,
                  color: Color(0xFF19D33D),
                  size: 80.0,
                ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('HomePage');
                      },
                      text: 'Back To Home',
                      options: FFButtonOptions(
                        width: 332.0,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF023E8A),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleLarge
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleLargeFamily,
                              color: Colors.white,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleLargeFamily),
                            ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
