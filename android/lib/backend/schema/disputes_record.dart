import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DisputesRecord extends FirestoreRecord {
  DisputesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "create_by" field.
  DocumentReference? _createBy;
  DocumentReference? get createBy => _createBy;
  bool hasCreateBy() => _createBy != null;

  // "order_id" field.
  DocumentReference? _orderId;
  DocumentReference? get orderId => _orderId;
  bool hasOrderId() => _orderId != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _createBy = snapshotData['create_by'] as DocumentReference?;
    _orderId = snapshotData['order_id'] as DocumentReference?;
    _message = snapshotData['message'] as String?;
    _status = snapshotData['status'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('disputes');

  static Stream<DisputesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DisputesRecord.fromSnapshot(s));

  static Future<DisputesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DisputesRecord.fromSnapshot(s));

  static DisputesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DisputesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DisputesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DisputesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DisputesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DisputesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDisputesRecordData({
  DateTime? createdAt,
  DocumentReference? createBy,
  DocumentReference? orderId,
  String? message,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'create_by': createBy,
      'order_id': orderId,
      'message': message,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class DisputesRecordDocumentEquality implements Equality<DisputesRecord> {
  const DisputesRecordDocumentEquality();

  @override
  bool equals(DisputesRecord? e1, DisputesRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.createBy == e2?.createBy &&
        e1?.orderId == e2?.orderId &&
        e1?.message == e2?.message &&
        e1?.status == e2?.status;
  }

  @override
  int hash(DisputesRecord? e) => const ListEquality()
      .hash([e?.createdAt, e?.createBy, e?.orderId, e?.message, e?.status]);

  @override
  bool isValidKey(Object? o) => o is DisputesRecord;
}
