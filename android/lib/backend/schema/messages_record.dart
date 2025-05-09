import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagesRecord extends FirestoreRecord {
  MessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "create_date" field.
  DateTime? _createDate;
  DateTime? get createDate => _createDate;
  bool hasCreateDate() => _createDate != null;

  // "provider_id" field.
  DocumentReference? _providerId;
  DocumentReference? get providerId => _providerId;
  bool hasProviderId() => _providerId != null;

  // "last_message_text" field.
  String? _lastMessageText;
  String get lastMessageText => _lastMessageText ?? '';
  bool hasLastMessageText() => _lastMessageText != null;

  // "last_message_date" field.
  DateTime? _lastMessageDate;
  DateTime? get lastMessageDate => _lastMessageDate;
  bool hasLastMessageDate() => _lastMessageDate != null;

  // "users_id" field.
  List<DocumentReference>? _usersId;
  List<DocumentReference> get usersId => _usersId ?? const [];
  bool hasUsersId() => _usersId != null;

  void _initializeFields() {
    _createDate = snapshotData['create_date'] as DateTime?;
    _providerId = snapshotData['provider_id'] as DocumentReference?;
    _lastMessageText = snapshotData['last_message_text'] as String?;
    _lastMessageDate = snapshotData['last_message_date'] as DateTime?;
    _usersId = getDataList(snapshotData['users_id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('messages');

  static Stream<MessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessagesRecord.fromSnapshot(s));

  static Future<MessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessagesRecord.fromSnapshot(s));

  static MessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessagesRecordData({
  DateTime? createDate,
  DocumentReference? providerId,
  String? lastMessageText,
  DateTime? lastMessageDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'create_date': createDate,
      'provider_id': providerId,
      'last_message_text': lastMessageText,
      'last_message_date': lastMessageDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessagesRecordDocumentEquality implements Equality<MessagesRecord> {
  const MessagesRecordDocumentEquality();

  @override
  bool equals(MessagesRecord? e1, MessagesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createDate == e2?.createDate &&
        e1?.providerId == e2?.providerId &&
        e1?.lastMessageText == e2?.lastMessageText &&
        e1?.lastMessageDate == e2?.lastMessageDate &&
        listEquality.equals(e1?.usersId, e2?.usersId);
  }

  @override
  int hash(MessagesRecord? e) => const ListEquality().hash([
        e?.createDate,
        e?.providerId,
        e?.lastMessageText,
        e?.lastMessageDate,
        e?.usersId
      ]);

  @override
  bool isValidKey(Object? o) => o is MessagesRecord;
}
