import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActionsRecord extends FirestoreRecord {
  ActionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "action" field.
  String? _action;
  String get action => _action ?? '';
  bool hasAction() => _action != null;

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "by" field.
  String? _by;
  String get by => _by ?? '';
  bool hasBy() => _by != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _action = snapshotData['action'] as String?;
    _dateTime = snapshotData['dateTime'] as DateTime?;
    _by = snapshotData['by'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('actions')
          : FirebaseFirestore.instance.collectionGroup('actions');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('actions').doc(id);

  static Stream<ActionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActionsRecord.fromSnapshot(s));

  static Future<ActionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActionsRecord.fromSnapshot(s));

  static ActionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActionsRecordData({
  String? action,
  DateTime? dateTime,
  String? by,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'action': action,
      'dateTime': dateTime,
      'by': by,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActionsRecordDocumentEquality implements Equality<ActionsRecord> {
  const ActionsRecordDocumentEquality();

  @override
  bool equals(ActionsRecord? e1, ActionsRecord? e2) {
    return e1?.action == e2?.action &&
        e1?.dateTime == e2?.dateTime &&
        e1?.by == e2?.by;
  }

  @override
  int hash(ActionsRecord? e) =>
      const ListEquality().hash([e?.action, e?.dateTime, e?.by]);

  @override
  bool isValidKey(Object? o) => o is ActionsRecord;
}
