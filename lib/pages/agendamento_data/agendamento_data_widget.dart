import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'agendamento_data_model.dart';
export 'agendamento_data_model.dart';

class AgendamentoDataWidget extends StatefulWidget {
  const AgendamentoDataWidget({super.key});

  @override
  State<AgendamentoDataWidget> createState() => _AgendamentoDataWidgetState();
}

class _AgendamentoDataWidgetState extends State<AgendamentoDataWidget> {
  late AgendamentoDataModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgendamentoDataModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Container(
        width: 1966.0,
        height: 1414.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [FlutterFlowTheme.of(context).primaryText, Colors.black],
            stops: const [0.0, 1.0],
            begin: const AlignmentDirectional(0.0, -1.0),
            end: const AlignmentDirectional(0, 1.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Container(
                width: 462.0,
                height: 160.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/studio-93-795ad.appspot.com/o/Arquivos%20apps%2FBanners%2FBanner%20Mobile%2FBanner%20agendamento%20Mobile%20462x200.png?alt=media&token=8b584a7f-0ed0-442c-a739-be6d6d385bc7',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(30.0, 25.0, 30.0, 0.0),
              child: FlutterFlowCalendar(
                color: const Color(0xFFAB8346),
                iconColor: FlutterFlowTheme.of(context).secondaryText,
                weekFormat: false,
                weekStartsMonday: true,
                initialDate: getCurrentTimestamp,
                rowHeight: 43.0,
                onChange: (DateTimeRange? newSelectedDate) async {
                  if (_model.calendarSelectedDay == newSelectedDate) {
                    return;
                  }
                  _model.calendarSelectedDay = newSelectedDate;
                  _model.iData = dateTimeFromSecondsSinceEpoch(
                      _model.calendarSelectedDay!.start.secondsSinceEpoch +
                          25200);
                  safeSetState(() {});
                  // Resetar
                  _model.listaHoras = [];
                  _model.contador = 9;
                  safeSetState(() {});
                  _model.addToListaHoras(_model.iData!);
                  safeSetState(() {});
                  while (_model.contador! <= 20) {
                    // Atualizar condição IData
                    _model.iData = dateTimeFromSecondsSinceEpoch(
                        _model.iData!.secondsSinceEpoch + 3600);
                    _model.contador = _model.contador! + 1;
                    safeSetState(() {});
                    _model.addToListaHoras(_model.iData!);
                    safeSetState(() {});
                  }
                  safeSetState(() {});
                },
                titleStyle: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
                dayOfWeekStyle:
                    FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 15.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                dateStyle: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
                selectedDateStyle:
                    FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                inactiveDateStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                locale: FFLocalizations.of(context).languageCode,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Container(
                width: 359.0,
                height: 284.0,
                decoration: const BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            30.0, 10.0, 30.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final itensGV = _model.listaHoras.toList();

                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Confirmacao');
                              },
                              child: GridView.builder(
                                padding: const EdgeInsets.fromLTRB(
                                  0,
                                  2.0,
                                  0,
                                  0,
                                ),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 11.0,
                                  childAspectRatio: 2.0,
                                ),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: itensGV.length,
                                itemBuilder: (context, itensGVIndex) {
                                  final itensGVItem = itensGV[itensGVIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.dataSelecionada = itensGVItem;
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: 64.0,
                                      height: 90.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFAB8346),
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          dateTimeFormat(
                                            "Hm",
                                            itensGVItem,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.black,
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: RichText(
                textScaler: MediaQuery.of(context).textScaler,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: dateTimeFormat(
                        "d/M H:mm",
                        _model.dataSelecionada,
                        locale: FFLocalizations.of(context).languageCode,
                      ),
                      style: const TextStyle(),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 23.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Confirmacao');
                  },
                  text: 'Confirmar Agendamento',
                  options: FFButtonOptions(
                    width: 289.0,
                    height: 50.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFFAB8346),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontSize: 22.0,
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
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  context.safePop();
                },
                text: 'retornar',
                icon: const Icon(
                  Icons.arrow_back,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  width: 145.0,
                  height: 36.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0x004B39EF),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w300,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Color(0x6CFFFFFF),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
