import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'pagina_inicial_widget.dart' show PaginaInicialWidget;
import 'package:flutter/material.dart';

class PaginaInicialModel extends FlutterFlowModel<PaginaInicialWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // State field(s) for PageView-Mobile widget.
  PageController? pageViewMobileController;

  int get pageViewMobileCurrentIndex => pageViewMobileController != null &&
          pageViewMobileController!.hasClients &&
          pageViewMobileController!.page != null
      ? pageViewMobileController!.page!.round()
      : 0;
  // State field(s) for PageView-web widget.
  PageController? pageViewWebController;

  int get pageViewWebCurrentIndex => pageViewWebController != null &&
          pageViewWebController!.hasClients &&
          pageViewWebController!.page != null
      ? pageViewWebController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
  }
}
