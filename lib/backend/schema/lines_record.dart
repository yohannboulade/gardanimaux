import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LinesRecord extends FirestoreRecord {
  LinesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date_time" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "sender_by" field.
  DocumentReference? _senderBy;
  DocumentReference? get senderBy => _senderBy;
  bool hasSenderBy() => _senderBy != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _dateTime = snapshotData['date_time'] as DateTime?;
    _text = snapshotData['text'] as String?;
    _senderBy = snapshotData['sender_by'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('lines')
          : FirebaseFirestore.instance.collectionGroup('lines');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('lines').doc(id);

  static Stream<LinesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LinesRecord.fromSnapshot(s));

  static Future<LinesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LinesRecord.fromSnapshot(s));

  static LinesRecord fromSnapshot(DocumentSnapshot snapshot) => LinesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LinesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LinesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LinesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LinesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLinesRecordData({
  DateTime? dateTime,
  String? text,
  DocumentReference? senderBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date_time': dateTime,
      'text': text,
      'sender_by': senderBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class LinesRecordDocumentEquality implements Equality<LinesRecord> {
  const LinesRecordDocumentEquality();

  @override
  bool equals(LinesRecord? e1, LinesRecord? e2) {
    return e1?.dateTime == e2?.dateTime &&
        e1?.text == e2?.text &&
        e1?.senderBy == e2?.senderBy;
  }

  @override
  int hash(LinesRecord? e) =>
      const ListEquality().hash([e?.dateTime, e?.text, e?.senderBy]);

  @override
  bool isValidKey(Object? o) => o is LinesRecord;
}
