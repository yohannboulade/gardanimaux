import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _selected = false;
  bool get selected => _selected;
  set selected(bool value) {
    _selected = value;
  }

  DateTime? _dateStart;
  DateTime? get dateStart => _dateStart;
  set dateStart(DateTime? value) {
    _dateStart = value;
  }

  DateTime? _dateEnd;
  DateTime? get dateEnd => _dateEnd;
  set dateEnd(DateTime? value) {
    _dateEnd = value;
  }

  LatLng? _whereLatLng;
  LatLng? get whereLatLng => _whereLatLng;
  set whereLatLng(LatLng? value) {
    _whereLatLng = value;
  }

  String _service = '';
  String get service => _service;
  set service(String value) {
    _service = value;
  }

  String _whereCity = '';
  String get whereCity => _whereCity;
  set whereCity(String value) {
    _whereCity = value;
  }

  int _index = 0;
  int get index => _index;
  set index(int value) {
    _index = value;
  }

  List<DocumentReference> _listRef = [];
  List<DocumentReference> get listRef => _listRef;
  set listRef(List<DocumentReference> value) {
    _listRef = value;
  }

  void addToListRef(DocumentReference value) {
    listRef.add(value);
  }

  void removeFromListRef(DocumentReference value) {
    listRef.remove(value);
  }

  void removeAtIndexFromListRef(int index) {
    listRef.removeAt(index);
  }

  void updateListRefAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    listRef[index] = updateFn(_listRef[index]);
  }

  void insertAtIndexInListRef(int index, DocumentReference value) {
    listRef.insert(index, value);
  }

  dynamic _test;
  dynamic get test => _test;
  set test(dynamic value) {
    _test = value;
  }

  double _calculPrice = 0.0;
  double get calculPrice => _calculPrice;
  set calculPrice(double value) {
    _calculPrice = value;
  }

  double _calculJour = 0.0;
  double get calculJour => _calculJour;
  set calculJour(double value) {
    _calculJour = value;
  }
}
