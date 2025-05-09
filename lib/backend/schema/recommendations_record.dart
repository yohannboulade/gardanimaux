import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecommendationsRecord extends FirestoreRecord {
  RecommendationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "user_customer_id" field.
  DocumentReference? _userCustomerId;
  DocumentReference? get userCustomerId => _userCustomerId;
  bool hasUserCustomerId() => _userCustomerId != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "order_id" field.
  DocumentReference? _orderId;
  DocumentReference? get orderId => _orderId;
  bool hasOrderId() => _orderId != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _userCustomerId = snapshotData['user_customer_id'] as DocumentReference?;
    _rating = castToType<int>(snapshotData['rating']);
    _comment = snapshotData['comment'] as String?;
    _orderId = snapshotData['order_id'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('recommendations')
          : FirebaseFirestore.instance.collectionGroup('recommendations');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('recommendations').doc(id);

  static Stream<RecommendationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecommendationsRecord.fromSnapshot(s));

  static Future<RecommendationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecommendationsRecord.fromSnapshot(s));

  static RecommendationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecommendationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecommendationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecommendationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecommendationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecommendationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecommendationsRecordData({
  DateTime? createdAt,
  DocumentReference? userCustomerId,
  int? rating,
  String? comment,
  DocumentReference? orderId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'user_customer_id': userCustomerId,
      'rating': rating,
      'comment': comment,
      'order_id': orderId,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecommendationsRecordDocumentEquality
    implements Equality<RecommendationsRecord> {
  const RecommendationsRecordDocumentEquality();

  @override
  bool equals(RecommendationsRecord? e1, RecommendationsRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.userCustomerId == e2?.userCustomerId &&
        e1?.rating == e2?.rating &&
        e1?.comment == e2?.comment &&
        e1?.orderId == e2?.orderId;
  }

  @override
  int hash(RecommendationsRecord? e) => const ListEquality().hash(
      [e?.createdAt, e?.userCustomerId, e?.rating, e?.comment, e?.orderId]);

  @override
  bool isValidKey(Object? o) => o is RecommendationsRecord;
}
