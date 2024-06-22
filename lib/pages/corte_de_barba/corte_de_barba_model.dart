import '/flutter_flow/flutter_flow_util.dart';
import 'corte_de_barba_widget.dart' show CorteDeBarbaWidget;
import 'package:flutter/material.dart';

class CorteDeBarbaModel extends FlutterFlowModel<CorteDeBarbaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
