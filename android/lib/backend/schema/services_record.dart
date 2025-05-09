import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicesRecord extends FirestoreRecord {
  ServicesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "service_name" field.
  String? _serviceName;
  String get serviceName => _serviceName ?? '';
  bool hasServiceName() => _serviceName != null;

  // "ordrer" field.
  int? _ordrer;
  int get ordrer => _ordrer ?? 0;
  bool hasOrdrer() => _ordrer != null;

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

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _serviceName = snapshotData['service_name'] as String?;
    _ordrer = castToType<int>(snapshotData['ordrer']);
    _petAccepted = snapshotData['pet_accepted'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _unit = snapshotData['unit'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('services');

  static Stream<ServicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicesRecord.fromSnapshot(s));

  static Future<ServicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicesRecord.fromSnapshot(s));

  static ServicesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicesRecordData({
  DateTime? createdTime,
  String? serviceName,
  int? ordrer,
  String? petAccepted,
  double? price,
  String? unit,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'service_name': serviceName,
      'ordrer': ordrer,
      'pet_accepted': petAccepted,
      'price': price,
      'unit': unit,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicesRecordDocumentEquality implements Equality<ServicesRecord> {
  const ServicesRecordDocumentEquality();

  @override
  bool equals(ServicesRecord? e1, ServicesRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.serviceName == e2?.serviceName &&
        e1?.ordrer == e2?.ordrer &&
        e1?.petAccepted == e2?.petAccepted &&
        e1?.price == e2?.price &&
        e1?.unit == e2?.unit;
  }

  @override
  int hash(ServicesRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.serviceName,
        e?.ordrer,
        e?.petAccepted,
        e?.price,
        e?.unit
      ]);

  @override
  bool isValidKey(Object? o) => o is ServicesRecord;
}
