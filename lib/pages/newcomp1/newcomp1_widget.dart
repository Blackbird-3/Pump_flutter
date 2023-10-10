import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'newcomp1_model.dart';
export 'newcomp1_model.dart';

class Newcomp1Widget extends StatefulWidget {
  const Newcomp1Widget({Key? key}) : super(key: key);

  @override
  _Newcomp1WidgetState createState() => _Newcomp1WidgetState();
}

class _Newcomp1WidgetState extends State<Newcomp1Widget> {
  late Newcomp1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Newcomp1Model());

    _model.dateController ??= TextEditingController();
    _model.nameController ??= TextEditingController();
    _model.mobileController ??= TextEditingController();
    _model.modelController ??= TextEditingController();
    _model.makeController ??= TextEditingController();
    _model.serialController ??= TextEditingController();
    _model.natureController ??= TextEditingController();
    _model.warrantyController ??= TextEditingController();
    _model.dDateController ??= TextEditingController();
    _model.dToController ??= TextEditingController();
    _model.amountController ??= TextEditingController();
    _model.commentsController ??= TextEditingController();
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
              'New Complaint',
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
              Align(
                alignment: AlignmentDirectional(-1.00, -1.00),
                child: Container(
                  width: 417.0,
                  height: 749.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF48CAE4),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0xBED9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: TextFormField(
                                  controller: _model.dateController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Date',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  keyboardType: TextInputType.datetime,
                                  validator: _model.dateControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0xBED9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: TextFormField(
                                  controller: _model.nameController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Customer Name',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.nameControllerValidator
                                      .asValidator(context),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp('[a-zA-Z]'))
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0xBED9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: TextFormField(
                                  controller: _model.mobileController,
                                  autofillHints: [
                                    AutofillHints.telephoneNumber
                                  ],
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Mobile No.',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  keyboardType: TextInputType.phone,
                                  validator: _model.mobileControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0xBED9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: TextFormField(
                                  controller: _model.modelController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Pump Model',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.modelControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0xBED9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: TextFormField(
                                  controller: _model.makeController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Pump Make',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.makeControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0xBED9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: TextFormField(
                                  controller: _model.serialController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Serial No.',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  keyboardType: TextInputType.number,
                                  validator: _model.serialControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0xBED9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: TextFormField(
                                  controller: _model.natureController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Nature of Complaint',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.natureControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0xBED9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      allowPhoto: true,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      setState(
                                          () => _model.isDataUploading = true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];

                                      var downloadUrls = <String>[];
                                      try {
                                        selectedUploadedFiles = selectedMedia
                                            .map((m) => FFUploadedFile(
                                                  name: m.storagePath
                                                      .split('/')
                                                      .last,
                                                  bytes: m.bytes,
                                                  height: m.dimensions?.height,
                                                  width: m.dimensions?.width,
                                                  blurHash: m.blurHash,
                                                ))
                                            .toList();

                                        downloadUrls = (await Future.wait(
                                          selectedMedia.map(
                                            (m) async => await uploadData(
                                                m.storagePath, m.bytes),
                                          ),
                                        ))
                                            .where((u) => u != null)
                                            .map((u) => u!)
                                            .toList();
                                      } finally {
                                        _model.isDataUploading = false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                              selectedMedia.length &&
                                          downloadUrls.length ==
                                              selectedMedia.length) {
                                        setState(() {
                                          _model.uploadedLocalFile =
                                              selectedUploadedFiles.first;
                                          _model.uploadedFileUrl =
                                              downloadUrls.first;
                                        });
                                      } else {
                                        setState(() {});
                                        return;
                                      }
                                    }
                                  },
                                  text: 'Pump Photo',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xBED9CACA),
                                    textStyle:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0xBED9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: FlutterFlowDropDown<String>(
                                  controller: _model.centreValueController ??=
                                      FormFieldController<String>(null),
                                  options: ['Nakul', 'Munna'],
                                  onChanged: (val) =>
                                      setState(() => _model.centreValue = val),
                                  width: 300.0,
                                  height: 50.0,
                                  textStyle:
                                      FlutterFlowTheme.of(context).titleLarge,
                                  hintText: 'Repair Centre',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: Color(0xBED9CACA),
                                  elevation: 2.0,
                                  borderColor: Color(0xBED9CACA),
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0xBED9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: TextFormField(
                                  controller: _model.warrantyController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Warranty Details',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.warrantyControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0xBED9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: TextFormField(
                                  controller: _model.dDateController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Delivery Date',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  keyboardType: TextInputType.datetime,
                                  validator: _model.dDateControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0xBED9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: TextFormField(
                                  controller: _model.dToController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Delivery To',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.dToControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0xBED9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: TextFormField(
                                  controller: _model.amountController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Repair Amount',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                          decimal: true),
                                  validator: _model.amountControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0xBED9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: TextFormField(
                                  controller: _model.commentsController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Additional Comments',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).titleLarge,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  keyboardType: TextInputType.multiline,
                                  validator: _model.commentsControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00D9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed('compcreated');
                                    },
                                    text: 'Create',
                                    options: FFButtonOptions(
                                      width: 229.0,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFF023E8A),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            color: Colors.white,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
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
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 50.0, 25.0, 0.0),
                              child: Container(
                                width: 380.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00D9CACA),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
