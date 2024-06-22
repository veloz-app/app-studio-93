import '/flutter_flow/flutter_flow_util.dart';
import 'corte_de_cabelo_widget.dart' show CorteDeCabeloWidget;
import 'package:flutter/material.dart';

class CorteDeCabeloModel extends FlutterFlowModel<CorteDeCabeloWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
