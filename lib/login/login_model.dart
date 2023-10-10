import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for inputEmail widget.
  TextEditingController? inputEmailController;
  String? Function(BuildContext, String?)? inputEmailControllerValidator;
  // State field(s) for inputPass widget.
  TextEditingController? inputPassController;
  late bool inputPassVisibility;
  String? Function(BuildContext, String?)? inputPassControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    inputPassVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    inputEmailController?.dispose();
    inputPassController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
