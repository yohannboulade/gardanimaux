import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PricesRecord extends FirestoreRecord {
  PricesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "pet_accepted" field.
  String? _petAccepted;
  String get petAccepted => _petAccepted ?? '';
  bool hasPetAccepted() => _petAccepted != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  bool hasUnit() => _unit != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _petAccepted = snapshotData['pet_accepted'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _unit = snapshotData['unit'] as String?;
    _order = castToType<int>(snapshotData['order']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('prices')
          : FirebaseFirestore.instance.collectionGroup('prices');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('prices').doc(id);

  static Stream<PricesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PricesRecord.fromSnapshot(s));

  static Future<PricesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PricesRecord.fromSnapshot(s));

  static PricesRecord fromSnapshot(DocumentSnapshot snapshot) => PricesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PricesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PricesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PricesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PricesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPricesRecordData({
  DateTime? createdTime,
  String? petAccepted,
  double? price,
  String? unit,
  int? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'pet_accepted': petAccepted,
      'price': price,
      'unit': unit,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class PricesRecordDocumentEquality implements Equality<PricesRecord> {
  const PricesRecordDocumentEquality();

  @override
  bool equals(PricesRecord? e1, PricesRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.petAccepted == e2?.petAccepted &&
        e1?.price == e2?.price &&
        e1?.unit == e2?.unit &&
        e1?.order == e2?.order;
  }

  @override
  int hash(PricesRecord? e) => const ListEquality()
      .hash([e?.createdTime, e?.petAccepted, e?.price, e?.unit, e?.order]);

  @override
  bool isValidKey(Object? o) => o is PricesRecord;
}
