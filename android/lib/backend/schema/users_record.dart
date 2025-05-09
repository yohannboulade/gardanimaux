import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "favorite_provider" field.
  List<DocumentReference>? _favoriteProvider;
  List<DocumentReference> get favoriteProvider => _favoriteProvider ?? const [];
  bool hasFavoriteProvider() => _favoriteProvider != null;

  // "adress" field.
  String? _adress;
  String get adress => _adress ?? '';
  bool hasAdress() => _adress != null;

  // "adress_name" field.
  String? _adressName;
  String get adressName => _adressName ?? '';
  bool hasAdressName() => _adressName != null;

  // "code_zip" field.
  String? _codeZip;
  String get codeZip => _codeZip ?? '';
  bool hasCodeZip() => _codeZip != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "lat_lng" field.
  LatLng? _latLng;
  LatLng? get latLng => _latLng;
  bool hasLatLng() => _latLng != null;

  // "is_provider" field.
  DocumentReference? _isProvider;
  DocumentReference? get isProvider => _isProvider;
  bool hasIsProvider() => _isProvider != null;

  // "my_orders" field.
  List<DocumentReference>? _myOrders;
  List<DocumentReference> get myOrders => _myOrders ?? const [];
  bool hasMyOrders() => _myOrders != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "view" field.
  List<DocumentReference>? _view;
  List<DocumentReference> get view => _view ?? const [];
  bool hasView() => _view != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _favoriteProvider = getDataList(snapshotData['favorite_provider']);
    _adress = snapshotData['adress'] as String?;
    _adressName = snapshotData['adress_name'] as String?;
    _codeZip = snapshotData['code_zip'] as String?;
    _city = snapshotData['city'] as String?;
    _latLng = snapshotData['lat_lng'] as LatLng?;
    _isProvider = snapshotData['is_provider'] as DocumentReference?;
    _myOrders = getDataList(snapshotData['my_orders']);
    _uid = snapshotData['uid'] as String?;
    _view = getDataList(snapshotData['view']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? adress,
  String? adressName,
  String? codeZip,
  String? city,
  LatLng? latLng,
  DocumentReference? isProvider,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'adress': adress,
      'adress_name': adressName,
      'code_zip': codeZip,
      'city': city,
      'lat_lng': latLng,
      'is_provider': isProvider,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        listEquality.equals(e1?.favoriteProvider, e2?.favoriteProvider) &&
        e1?.adress == e2?.adress &&
        e1?.adressName == e2?.adressName &&
        e1?.codeZip == e2?.codeZip &&
        e1?.city == e2?.city &&
        e1?.latLng == e2?.latLng &&
        e1?.isProvider == e2?.isProvider &&
        listEquality.equals(e1?.myOrders, e2?.myOrders) &&
        e1?.uid == e2?.uid &&
        listEquality.equals(e1?.view, e2?.view);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.favoriteProvider,
        e?.adress,
        e?.adressName,
        e?.codeZip,
        e?.city,
        e?.latLng,
        e?.isProvider,
        e?.myOrders,
        e?.uid,
        e?.view
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
