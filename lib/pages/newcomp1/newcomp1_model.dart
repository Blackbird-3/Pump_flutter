import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'newcomp1_widget.dart' show Newcomp1Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Newcomp1Model extends FlutterFlowModel<Newcomp1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for date widget.
  TextEditingController? dateController;
  String? Function(BuildContext, String?)? dateControllerValidator;
  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for mobile widget.
  TextEditingController? mobileController;
  String? Function(BuildContext, String?)? mobileControllerValidator;
  // State field(s) for model widget.
  TextEditingController? modelController;
  String? Function(BuildContext, String?)? modelControllerValidator;
  // State field(s) for make widget.
  TextEditingController? makeController;
  String? Function(BuildContext, String?)? makeControllerValidator;
  // State field(s) for serial widget.
  TextEditingController? serialController;
  String? Function(BuildContext, String?)? serialControllerValidator;
  // State field(s) for nature widget.
  TextEditingController? natureController;
  String? Function(BuildContext, String?)? natureControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for centre widget.
  String? centreValue;
  FormFieldController<String>? centreValueController;
  // State field(s) for warranty widget.
  TextEditingController? warrantyController;
  String? Function(BuildContext, String?)? warrantyControllerValidator;
  // State field(s) for dDate widget.
  TextEditingController? dDateController;
  String? Function(BuildContext, String?)? dDateControllerValidator;
  // State field(s) for dTo widget.
  TextEditingController? dToController;
  String? Function(BuildContext, String?)? dToControllerValidator;
  // State field(s) for amount widget.
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;
  // State field(s) for comments widget.
  TextEditingController? commentsController;
  String? Function(BuildContext, String?)? commentsControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    dateController?.dispose();
    nameController?.dispose();
    mobileController?.dispose();
    modelController?.dispose();
    makeController?.dispose();
    serialController?.dispose();
    natureController?.dispose();
    warrantyController?.dispose();
    dDateController?.dispose();
    dToController?.dispose();
    amountController?.dispose();
    commentsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
