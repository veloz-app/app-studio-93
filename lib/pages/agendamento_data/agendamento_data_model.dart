import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'agendamento_data_widget.dart' show AgendamentoDataWidget;
import 'package:flutter/material.dart';

class AgendamentoDataModel extends FlutterFlowModel<AgendamentoDataWidget> {
  ///  Local state fields for this page.

  DateTime? iData;

  List<DateTime> listaHoras = [];
  void addToListaHoras(DateTime item) => listaHoras.add(item);
  void removeFromListaHoras(DateTime item) => listaHoras.remove(item);
  void removeAtIndexFromListaHoras(int index) => listaHoras.removeAt(index);
  void insertAtIndexInListaHoras(int index, DateTime item) =>
      listaHoras.insert(index, item);
  void updateListaHorasAtIndex(int index, Function(DateTime) updateFn) =>
      listaHoras[index] = updateFn(listaHoras[index]);

  int? contador;

  DateTime? dataSelecionada;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
