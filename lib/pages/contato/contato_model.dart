import '/flutter_flow/flutter_flow_util.dart';
import 'contato_widget.dart' show ContatoWidget;
import 'package:flutter/material.dart';

class ContatoModel extends FlutterFlowModel<ContatoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
