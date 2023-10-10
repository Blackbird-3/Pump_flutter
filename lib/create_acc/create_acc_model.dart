import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_acc_widget.dart' show CreateAccWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAccModel extends FlutterFlowModel<CreateAccWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for inputEmail widget.
  TextEditingController? inputEmailController;
  String? Function(BuildContext, String?)? inputEmailControllerValidator;
  // State field(s) for inputPass widget.
  TextEditingController? inputPassController;
  late bool inputPassVisibility;
  String? Function(BuildContext, String?)? inputPassControllerValidator;
  // State field(s) for inputPass2 widget.
  TextEditingController? inputPass2Controller;
  late bool inputPass2Visibility;
  String? Function(BuildContext, String?)? inputPass2ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    inputPassVisibility = false;
    inputPass2Visibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    inputEmailController?.dispose();
    inputPassController?.dispose();
    inputPass2Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
