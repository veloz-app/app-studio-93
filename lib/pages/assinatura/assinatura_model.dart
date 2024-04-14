import '/flutter_flow/flutter_flow_util.dart';
import 'assinatura_widget.dart' show AssinaturaWidget;
import 'package:flutter/material.dart';

class AssinaturaModel extends FlutterFlowModel<AssinaturaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
