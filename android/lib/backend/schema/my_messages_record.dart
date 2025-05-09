import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyMessagesRecord extends FirestoreRecord {
  MyMessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "messages_ref" field.
  DocumentReference? _messagesRef;
  DocumentReference? get messagesRef => _messagesRef;
  bool hasMessagesRef() => _messagesRef != null;

  // "last_update" field.
  DateTime? _lastUpdate;
  DateTime? get lastUpdate => _lastUpdate;
  bool hasLastUpdate() => _lastUpdate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _messagesRef = snapshotData['messages_ref'] as DocumentReference?;
    _lastUpdate = snapshotData['last_update'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('my_messages')
          : FirebaseFirestore.instance.collectionGroup('my_messages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('my_messages').doc(id);

  static Stream<MyMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyMessagesRecord.fromSnapshot(s));

  static Future<MyMessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyMessagesRecord.fromSnapshot(s));

  static MyMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyMessagesRecordData({
  DocumentReference? messagesRef,
  DateTime? lastUpdate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'messages_ref': messagesRef,
      'last_update': lastUpdate,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyMessagesRecordDocumentEquality implements Equality<MyMessagesRecord> {
  const MyMessagesRecordDocumentEquality();

  @override
  bool equals(MyMessagesRecord? e1, MyMessagesRecord? e2) {
    return e1?.messagesRef == e2?.messagesRef &&
        e1?.lastUpdate == e2?.lastUpdate;
  }

  @override
  int hash(MyMessagesRecord? e) =>
      const ListEquality().hash([e?.messagesRef, e?.lastUpdate]);

  @override
  bool isValidKey(Object? o) => o is MyMessagesRecord;
}
