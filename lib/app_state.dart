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
      _NEW1 = prefs.getStringList('ff_NEW1') ?? _NEW1;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _NEW1 = [];
  List<String> get NEW1 => _NEW1;
  set NEW1(List<String> value) {
    _NEW1 = value;
    prefs.setStringList('ff_NEW1', value);
  }

  void addToNEW1(String value) {
    NEW1.add(value);
    prefs.setStringList('ff_NEW1', _NEW1);
  }

  void removeFromNEW1(String value) {
    NEW1.remove(value);
    prefs.setStringList('ff_NEW1', _NEW1);
  }

  void removeAtIndexFromNEW1(int index) {
    NEW1.removeAt(index);
    prefs.setStringList('ff_NEW1', _NEW1);
  }

  void updateNEW1AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    NEW1[index] = updateFn(_NEW1[index]);
    prefs.setStringList('ff_NEW1', _NEW1);
  }

  void insertAtIndexInNEW1(int index, String value) {
    NEW1.insert(index, value);
    prefs.setStringList('ff_NEW1', _NEW1);
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
