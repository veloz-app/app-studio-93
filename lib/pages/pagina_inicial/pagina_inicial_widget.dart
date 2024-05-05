import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'pagina_inicial_model.dart';
export 'pagina_inicial_model.dart';

class PaginaInicialWidget extends StatefulWidget {
  const PaginaInicialWidget({super.key});

  @override
  State<PaginaInicialWidget> createState() => _PaginaInicialWidgetState();
}

class _PaginaInicialWidgetState extends State<PaginaInicialWidget>
    with TickerProviderStateMixin {
  late PaginaInicialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginaInicialModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().update(() {
        FFAppState().PageViewAtual = 1;
      });
      _model.Tempo = InstantTimer.periodic(
        duration: const Duration(milliseconds: 4000),
        callback: (timer) async {
          await Future.wait([
            Future(() async {
              if (FFAppState().PageViewAtual >= FFAppState().PageViewTotal) {
                FFAppState().PageViewAtual = 1;
                await _model.pageViewMobileController?.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
                return;
              } else {
                await _model.pageViewMobileController?.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
                FFAppState().PageViewAtual = FFAppState().PageViewAtual + 1;
                return;
              }
            }),
            Future(() async {}),
            Future(() async {
              if (FFAppState().PageViewAtual >= FFAppState().PageViewTotal) {
                FFAppState().PageViewAtual = 1;
                await _model.pageViewWebController?.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
                return;
              } else {
                await _model.pageViewWebController?.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
                FFAppState().PageViewAtual = FFAppState().PageViewAtual + 1;
                return;
              }
            }),
          ]);
        },
        startImmediately: false,
      );
    });

    animationsMap.addAll({
      'buttonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 310.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 310.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 500.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 600.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 310.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 310.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 500.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 600.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [FlutterFlowTheme.of(context).primaryText, Colors.black],
              stops: const [0.0, 1.0],
              begin: const AlignmentDirectional(0.0, -1.0),
              end: const AlignmentDirectional(0, 1.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(130.0, 0.0, 130.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Logotipo.png',
                          width: 70.0,
                          height: 70.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        'MENU PRINCIPAL',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Text(
                        'SERVIÇOS',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Text(
                        'EDITAR PERFIL',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Text(
                        'AGENDAMENTOS',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 90.0,
                              height: 32.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(6.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('Login');
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.login,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 18.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Login',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 136.0,
                              height: 35.0,
                              decoration: BoxDecoration(
                                color: const Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('Login');
                                      },
                                      child: Text(
                                        'Criar uma conta',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0xFFAB8346),
                                              fontSize: 15.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Color(0xFFAB8346),
                              size: 20.0,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: FaIcon(
                              FontAwesomeIcons.facebookSquare,
                              color: Color(0xFFAB8346),
                              size: 20.0,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: FaIcon(
                              FontAwesomeIcons.whatsapp,
                              color: Color(0xFFAB8346),
                              size: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                desktop: false,
              ))
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(80.0, 0.0, 80.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Logotipo.png',
                          width: 70.0,
                          height: 76.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        'MENU PRINCIPAL',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Text(
                        'SERVIÇOS',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Text(
                        'EDITAR PERFIL',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Text(
                        'AGENDAMENTOS',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 69.0,
                              height: 28.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(6.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('Login');
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.login,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 18.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Login',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 109.0,
                              height: 28.0,
                              decoration: BoxDecoration(
                                color: const Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('Login');
                                      },
                                      child: Text(
                                        'Criar uma conta',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0xFFAB8346),
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Color(0xFFAB8346),
                              size: 20.0,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: FaIcon(
                              FontAwesomeIcons.facebookSquare,
                              color: Color(0xFFAB8346),
                              size: 20.0,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: FaIcon(
                              FontAwesomeIcons.whatsapp,
                              color: Color(0xFFAB8346),
                              size: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                SizedBox(
                  width: double.infinity,
                  height: 290.0,
                  child: Stack(
                    children: [
                      PageView(
                        controller: _model.pageViewMobileController ??=
                            PageController(initialPage: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Prancheta_4.png',
                              width: 300.0,
                              height: 770.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Prancheta_5.png',
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Prancheta_2.png',
                              width: 300.0,
                              height: 174.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: _model.pageViewMobileController ??=
                                PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) async {
                              await _model.pageViewMobileController!
                                  .animateToPage(
                                i,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: smooth_page_indicator.ExpandingDotsEffect(
                              expansionFactor: 3.0,
                              spacing: 8.0,
                              radius: 16.0,
                              dotWidth: 8.0,
                              dotHeight: 6.0,
                              dotColor: FlutterFlowTheme.of(context).alternate,
                              activeDotColor: const Color(0xFF69522D),
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                desktop: false,
              ))
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 396.0,
                    child: Stack(
                      children: [
                        PageView(
                          controller: _model.pageViewTabletController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Visibility(
                              visible: responsiveVisibility(
                                context: context,
                                tablet: false,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Banner_Curso_Tablet.png',
                                  width: 300.0,
                                  height: 942.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Banner_Contato_tablet.png',
                                width: 300.0,
                                height: 216.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Banner_assinatura_Tablet.png',
                                width: 300.0,
                                height: 174.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: smooth_page_indicator.SmoothPageIndicator(
                              controller: _model.pageViewTabletController ??=
                                  PageController(initialPage: 0),
                              count: 3,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) async {
                                await _model.pageViewTabletController!
                                    .animateToPage(
                                  i,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              effect: smooth_page_indicator.ExpandingDotsEffect(
                                expansionFactor: 3.0,
                                spacing: 8.0,
                                radius: 16.0,
                                dotWidth: 8.0,
                                dotHeight: 6.0,
                                dotColor:
                                    FlutterFlowTheme.of(context).alternate,
                                activeDotColor: const Color(0xFF69522D),
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 396.0,
                    child: Stack(
                      children: [
                        PageView(
                          controller: _model.pageViewWebController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Banner_curso_Web.png',
                                width: 300.0,
                                height: 942.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Banner_Redes_sociais_Web.png',
                                width: 300.0,
                                height: 216.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Banner_assinatura_Web.png',
                                width: 300.0,
                                height: 174.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: smooth_page_indicator.SmoothPageIndicator(
                              controller: _model.pageViewWebController ??=
                                  PageController(initialPage: 0),
                              count: 3,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) async {
                                await _model.pageViewWebController!
                                    .animateToPage(
                                  i,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              effect: smooth_page_indicator.ExpandingDotsEffect(
                                expansionFactor: 3.0,
                                spacing: 8.0,
                                radius: 16.0,
                                dotWidth: 8.0,
                                dotHeight: 6.0,
                                dotColor:
                                    FlutterFlowTheme.of(context).alternate,
                                activeDotColor: const Color(0xFF69522D),
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(60.0, 10.0, 60.0, 0.0),
                  child: Container(
                    width: 570.0,
                    height: 264.0,
                    decoration: const BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(
                                    'Assinatura-Intro',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                        duration: Duration(milliseconds: 300),
                                      ),
                                    },
                                  );
                                },
                                text: 'ASSINATURA',
                                icon: const Icon(
                                  Icons.star_border,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 210.0,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFFAB8346),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['buttonOnPageLoadAnimation1']!),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'AGENDAMENTO',
                                icon: const Icon(
                                  Icons.calendar_month,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 210.0,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFFAB8346),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['buttonOnPageLoadAnimation2']!),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('Contato');
                                },
                                text: 'CONTATO',
                                icon: const Icon(
                                  Icons.chat_sharp,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 210.0,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFFAB8346),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['buttonOnPageLoadAnimation3']!),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 10.0, 12.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('Servicos');
                                },
                                text: 'SERVIÇOS',
                                icon: const Icon(
                                  Icons.double_arrow,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 210.0,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0x00AB8346),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 22.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Color(0xFFAB8346),
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['buttonOnPageLoadAnimation4']!),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              Flexible(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'CONHEÇA NOSSA HISTÓRIA',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/Foto_1.png',
                            width: 226.0,
                            height: 275.0,
                            fit: BoxFit.contain,
                            alignment: const Alignment(0.0, 0.0),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 60.0, 0.0),
                  child: Container(
                    width: 1456.0,
                    height: 377.0,
                    decoration: const BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 50.0, 0.0, 0.0),
                          child: Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(
                                      'Assinatura-Intro',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 300),
                                        ),
                                      },
                                    );
                                  },
                                  text: 'ASSINATURA',
                                  icon: const Icon(
                                    Icons.star_border,
                                    size: 50.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 120.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFFAB8346),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 40.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'buttonOnPageLoadAnimation5']!),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'AGENDAMENTO',
                                  icon: const Icon(
                                    Icons.calendar_month,
                                    size: 50.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 120.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFFAB8346),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 40.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'buttonOnPageLoadAnimation6']!),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('Contato');
                                  },
                                  text: 'CONTATO',
                                  icon: const Icon(
                                    Icons.chat_sharp,
                                    size: 50.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 120.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFFAB8346),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 30.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'buttonOnPageLoadAnimation7']!),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('Servicos');
                                  },
                                  text: 'SERVIÇOS',
                                  icon: const Icon(
                                    Icons.double_arrow,
                                    size: 50.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 120.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0x00AB8346),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 30.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Color(0xFFAB8346),
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'buttonOnPageLoadAnimation8']!),
                              ),
                            ],
                          ),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                        ))
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Button',
                            options: FFButtonOptions(
                              width: 620.0,
                              height: 101.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 40.0,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
