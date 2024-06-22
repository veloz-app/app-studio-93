import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Email-entrada widget.
  FocusNode? emailEntradaFocusNode;
  TextEditingController? emailEntradaTextController;
  String? Function(BuildContext, String?)? emailEntradaTextControllerValidator;
  // State field(s) for SenhaEntrada widget.
  FocusNode? senhaEntradaFocusNode;
  TextEditingController? senhaEntradaTextController;
  late bool senhaEntradaVisibility;
  String? Function(BuildContext, String?)? senhaEntradaTextControllerValidator;
  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for Sobrenome widget.
  FocusNode? sobrenomeFocusNode;
  TextEditingController? sobrenomeTextController;
  String? Function(BuildContext, String?)? sobrenomeTextControllerValidator;
  // State field(s) for Nascimento widget.
  FocusNode? nascimentoFocusNode;
  TextEditingController? nascimentoTextController;
  final nascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? nascimentoTextControllerValidator;
  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  final telefoneMask = MaskTextInputFormatter(mask: '## ####-####');
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // State field(s) for Whatsapp widget.
  FocusNode? whatsappFocusNode;
  TextEditingController? whatsappTextController;
  final whatsappMask = MaskTextInputFormatter(mask: '## #####-####');
  String? Function(BuildContext, String?)? whatsappTextControllerValidator;
  // State field(s) for Endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoTextController;
  String? Function(BuildContext, String?)? enderecoTextControllerValidator;
  // State field(s) for CriacaoE-mail widget.
  FocusNode? criacaoEMailFocusNode;
  TextEditingController? criacaoEMailTextController;
  String? Function(BuildContext, String?)? criacaoEMailTextControllerValidator;
  // State field(s) for CriacaoSenha widget.
  FocusNode? criacaoSenhaFocusNode;
  TextEditingController? criacaoSenhaTextController;
  late bool criacaoSenhaVisibility;
  String? Function(BuildContext, String?)? criacaoSenhaTextControllerValidator;
  // State field(s) for CriacaoConfirmacaoSenha widget.
  FocusNode? criacaoConfirmacaoSenhaFocusNode;
  TextEditingController? criacaoConfirmacaoSenhaTextController;
  late bool criacaoConfirmacaoSenhaVisibility;
  String? Function(BuildContext, String?)?
      criacaoConfirmacaoSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaEntradaVisibility = false;
    criacaoSenhaVisibility = false;
    criacaoConfirmacaoSenhaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailEntradaFocusNode?.dispose();
    emailEntradaTextController?.dispose();

    senhaEntradaFocusNode?.dispose();
    senhaEntradaTextController?.dispose();

    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    sobrenomeFocusNode?.dispose();
    sobrenomeTextController?.dispose();

    nascimentoFocusNode?.dispose();
    nascimentoTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    whatsappFocusNode?.dispose();
    whatsappTextController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoTextController?.dispose();

    criacaoEMailFocusNode?.dispose();
    criacaoEMailTextController?.dispose();

    criacaoSenhaFocusNode?.dispose();
    criacaoSenhaTextController?.dispose();

    criacaoConfirmacaoSenhaFocusNode?.dispose();
    criacaoConfirmacaoSenhaTextController?.dispose();
  }
}
