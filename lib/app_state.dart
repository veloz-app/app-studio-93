import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _PageViewAtual = prefs.getInt('ff_PageViewAtual') ?? _PageViewAtual;
    });
    _safeInit(() {
      _dataSlecionada = prefs.containsKey('ff_dataSlecionada')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_dataSlecionada')!)
          : _dataSlecionada;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _PageViewAtual = 0;
  int get PageViewAtual => _PageViewAtual;
  set PageViewAtual(int value) {
    _PageViewAtual = value;
    prefs.setInt('ff_PageViewAtual', value);
  }

  int _PageViewTotal = 3;
  int get PageViewTotal => _PageViewTotal;
  set PageViewTotal(int value) {
    _PageViewTotal = value;
  }

  String _VerMenu = '';
  String get VerMenu => _VerMenu;
  set VerMenu(String value) {
    _VerMenu = value;
  }

  DateTime? _dataSlecionada =
      DateTime.fromMillisecondsSinceEpoch(1718670900000);
  DateTime? get dataSlecionada => _dataSlecionada;
  set dataSlecionada(DateTime? value) {
    _dataSlecionada = value;
    value != null
        ? prefs.setInt('ff_dataSlecionada', value.millisecondsSinceEpoch)
        : prefs.remove('ff_dataSlecionada');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
