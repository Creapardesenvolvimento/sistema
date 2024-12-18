import '/flutter_flow/flutter_flow_util.dart';
import 'criar_empresa_widget.dart' show CriarEmpresaWidget;
import 'package:flutter/material.dart';

class CriarEmpresaModel extends FlutterFlowModel<CriarEmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nameCreate widget.
  FocusNode? nameCreateFocusNode;
  TextEditingController? nameCreateTextController;
  String? Function(BuildContext, String?)? nameCreateTextControllerValidator;
  // State field(s) for emailCreate widget.
  FocusNode? emailCreateFocusNode;
  TextEditingController? emailCreateTextController;
  String? Function(BuildContext, String?)? emailCreateTextControllerValidator;
  // State field(s) for passwordCreate widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for passwordConfirmCreate widget.
  FocusNode? passwordConfirmCreateFocusNode;
  TextEditingController? passwordConfirmCreateTextController;
  late bool passwordConfirmCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmCreateTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordCreateVisibility = false;
    passwordConfirmCreateVisibility = false;
  }

  @override
  void dispose() {
    nameCreateFocusNode?.dispose();
    nameCreateTextController?.dispose();

    emailCreateFocusNode?.dispose();
    emailCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordConfirmCreateFocusNode?.dispose();
    passwordConfirmCreateTextController?.dispose();
  }
}
