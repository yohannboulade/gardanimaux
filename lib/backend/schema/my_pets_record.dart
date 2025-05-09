import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyPetsRecord extends FirestoreRecord {
  MyPetsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "year_birth" field.
  int? _yearBirth;
  int get yearBirth => _yearBirth ?? 0;
  bool hasYearBirth() => _yearBirth != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _yearBirth = castToType<int>(snapshotData['year_birth']);
    _type = snapshotData['type'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('my_pets')
          : FirebaseFirestore.instance.collectionGroup('my_pets');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('my_pets').doc(id);

  static Stream<MyPetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyPetsRecord.fromSnapshot(s));

  static Future<MyPetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyPetsRecord.fromSnapshot(s));

  static MyPetsRecord fromSnapshot(DocumentSnapshot snapshot) => MyPetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyPetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyPetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyPetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyPetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyPetsRecordData({
  String? name,
  int? yearBirth,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'year_birth': yearBirth,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyPetsRecordDocumentEquality implements Equality<MyPetsRecord> {
  const MyPetsRecordDocumentEquality();

  @override
  bool equals(MyPetsRecord? e1, MyPetsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.yearBirth == e2?.yearBirth &&
        e1?.type == e2?.type;
  }

  @override
  int hash(MyPetsRecord? e) =>
      const ListEquality().hash([e?.name, e?.yearBirth, e?.type]);

  @override
  bool isValidKey(Object? o) => o is MyPetsRecord;
}
