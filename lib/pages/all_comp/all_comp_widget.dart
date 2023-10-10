import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_comp_model.dart';
export 'all_comp_model.dart';

class AllCompWidget extends StatefulWidget {
  const AllCompWidget({Key? key}) : super(key: key);

  @override
  _AllCompWidgetState createState() => _AllCompWidgetState();
}

class _AllCompWidgetState extends State<AllCompWidget> {
  late AllCompModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllCompModel());
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Color(0xFF03045E),
            automaticallyImplyLeading: false,
            title: Text(
              'All Complaints',
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineLargeFamily,
                    color: Colors.white,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).headlineLargeFamily),
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                child: StreamBuilder<List<ComplaintsRecord>>(
                  stream: queryComplaintsRecord(
                    queryBuilder: (complaintsRecord) =>
                        complaintsRecord.orderBy('date', descending: true),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitWave(
                            color: FlutterFlowTheme.of(context).primary,
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<ComplaintsRecord> listViewComplaintsRecordList =
                        snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewComplaintsRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewComplaintsRecord =
                            listViewComplaintsRecordList[listViewIndex];
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                listViewComplaintsRecord.date?.toString(),
                                'Date',
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                            Text(
                              valueOrDefault<String>(
                                listViewComplaintsRecord.mobile.toString(),
                                'mobile',
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                            Text(
                              listViewComplaintsRecord.name,
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                            Text(
                              valueOrDefault<String>(
                                listViewComplaintsRecord.serial.toString(),
                                'serial',
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                            Text(
                              listViewComplaintsRecord.model,
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
