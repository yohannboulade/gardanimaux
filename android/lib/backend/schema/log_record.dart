import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LogRecord extends FirestoreRecord {
  LogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date_time" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "log" field.
  String? _log;
  String get log => _log ?? '';
  bool hasLog() => _log != null;

  void _initializeFields() {
    _dateTime = snapshotData['date_time'] as DateTime?;
    _log = snapshotData['log'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('log');

  static Stream<LogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LogRecord.fromSnapshot(s));

  static Future<LogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LogRecord.fromSnapshot(s));

  static LogRecord fromSnapshot(DocumentSnapshot snapshot) => LogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLogRecordData({
  DateTime? dateTime,
  String? log,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date_time': dateTime,
      'log': log,
    }.withoutNulls,
  );

  return firestoreData;
}

class LogRecordDocumentEquality implements Equality<LogRecord> {
  const LogRecordDocumentEquality();

  @override
  bool equals(LogRecord? e1, LogRecord? e2) {
    return e1?.dateTime == e2?.dateTime && e1?.log == e2?.log;
  }

  @override
  int hash(LogRecord? e) => const ListEquality().hash([e?.dateTime, e?.log]);

  @override
  bool isValidKey(Object? o) => o is LogRecord;
}
