import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProviderRecord extends FirestoreRecord {
  ProviderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

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

  // "page_title" field.
  String? _pageTitle;
  String get pageTitle => _pageTitle ?? '';
  bool hasPageTitle() => _pageTitle != null;

  // "page_presentation" field.
  String? _pagePresentation;
  String get pagePresentation => _pagePresentation ?? '';
  bool hasPagePresentation() => _pagePresentation != null;

  // "page_place_description" field.
  String? _pagePlaceDescription;
  String get pagePlaceDescription => _pagePlaceDescription ?? '';
  bool hasPagePlaceDescription() => _pagePlaceDescription != null;

  // "my_services" field.
  List<DocumentReference>? _myServices;
  List<DocumentReference> get myServices => _myServices ?? const [];
  bool hasMyServices() => _myServices != null;

  // "my_orders" field.
  List<DocumentReference>? _myOrders;
  List<DocumentReference> get myOrders => _myOrders ?? const [];
  bool hasMyOrders() => _myOrders != null;

  // "statut" field.
  String? _statut;
  String get statut => _statut ?? '';
  bool hasStatut() => _statut != null;

  // "visible" field.
  bool? _visible;
  bool get visible => _visible ?? false;
  bool hasVisible() => _visible != null;

  // "my_followers" field.
  List<DocumentReference>? _myFollowers;
  List<DocumentReference> get myFollowers => _myFollowers ?? const [];
  bool hasMyFollowers() => _myFollowers != null;

  // "stripe_id" field.
  String? _stripeId;
  String get stripeId => _stripeId ?? '';
  bool hasStripeId() => _stripeId != null;

  // "stripe_external_account_id" field.
  List<String>? _stripeExternalAccountId;
  List<String> get stripeExternalAccountId =>
      _stripeExternalAccountId ?? const [];
  bool hasStripeExternalAccountId() => _stripeExternalAccountId != null;

  // "skills" field.
  List<String>? _skills;
  List<String> get skills => _skills ?? const [];
  bool hasSkills() => _skills != null;

  // "strengths" field.
  List<String>? _strengths;
  List<String> get strengths => _strengths ?? const [];
  bool hasStrengths() => _strengths != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "last_availability" field.
  DateTime? _lastAvailability;
  DateTime? get lastAvailability => _lastAvailability;
  bool hasLastAvailability() => _lastAvailability != null;

  // "view" field.
  List<DocumentReference>? _view;
  List<DocumentReference> get view => _view ?? const [];
  bool hasView() => _view != null;

  // "certificate" field.
  bool? _certificate;
  bool get certificate => _certificate ?? false;
  bool hasCertificate() => _certificate != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _adress = snapshotData['adress'] as String?;
    _adressName = snapshotData['adress_name'] as String?;
    _codeZip = snapshotData['code_zip'] as String?;
    _city = snapshotData['city'] as String?;
    _latLng = snapshotData['lat_lng'] as LatLng?;
    _pageTitle = snapshotData['page_title'] as String?;
    _pagePresentation = snapshotData['page_presentation'] as String?;
    _pagePlaceDescription = snapshotData['page_place_description'] as String?;
    _myServices = getDataList(snapshotData['my_services']);
    _myOrders = getDataList(snapshotData['my_orders']);
    _statut = snapshotData['statut'] as String?;
    _visible = snapshotData['visible'] as bool?;
    _myFollowers = getDataList(snapshotData['my_followers']);
    _stripeId = snapshotData['stripe_id'] as String?;
    _stripeExternalAccountId =
        getDataList(snapshotData['stripe_external_account_id']);
    _skills = getDataList(snapshotData['skills']);
    _strengths = getDataList(snapshotData['strengths']);
    _rating = castToType<double>(snapshotData['rating']);
    _lastAvailability = snapshotData['last_availability'] as DateTime?;
    _view = getDataList(snapshotData['view']);
    _certificate = snapshotData['certificate'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('provider');

  static Stream<ProviderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProviderRecord.fromSnapshot(s));

  static Future<ProviderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProviderRecord.fromSnapshot(s));

  static ProviderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProviderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProviderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProviderRecord._(reference, mapFromFirestore(data));

  static ProviderRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ProviderRecord.getDocumentFromData(
        {
          'created_time': convertAlgoliaParam(
            snapshot.data['created_time'],
            ParamType.DateTime,
            false,
          ),
          'adress': snapshot.data['adress'],
          'adress_name': snapshot.data['adress_name'],
          'code_zip': snapshot.data['code_zip'],
          'city': snapshot.data['city'],
          'lat_lng': convertAlgoliaParam(
            snapshot.data,
            ParamType.LatLng,
            false,
          ),
          'page_title': snapshot.data['page_title'],
          'page_presentation': snapshot.data['page_presentation'],
          'page_place_description': snapshot.data['page_place_description'],
          'my_services': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['my_services'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'my_orders': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['my_orders'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'statut': snapshot.data['statut'],
          'visible': snapshot.data['visible'],
          'my_followers': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['my_followers'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'stripe_id': snapshot.data['stripe_id'],
          'stripe_external_account_id': safeGet(
            () => snapshot.data['stripe_external_account_id'].toList(),
          ),
          'skills': safeGet(
            () => snapshot.data['skills'].toList(),
          ),
          'strengths': safeGet(
            () => snapshot.data['strengths'].toList(),
          ),
          'rating': convertAlgoliaParam(
            snapshot.data['rating'],
            ParamType.double,
            false,
          ),
          'last_availability': convertAlgoliaParam(
            snapshot.data['last_availability'],
            ParamType.DateTime,
            false,
          ),
          'view': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['view'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'certificate': snapshot.data['certificate'],
        },
        ProviderRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ProviderRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'provider',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ProviderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProviderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProviderRecordData({
  DateTime? createdTime,
  String? adress,
  String? adressName,
  String? codeZip,
  String? city,
  LatLng? latLng,
  String? pageTitle,
  String? pagePresentation,
  String? pagePlaceDescription,
  String? statut,
  bool? visible,
  String? stripeId,
  double? rating,
  DateTime? lastAvailability,
  bool? certificate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'adress': adress,
      'adress_name': adressName,
      'code_zip': codeZip,
      'city': city,
      'lat_lng': latLng,
      'page_title': pageTitle,
      'page_presentation': pagePresentation,
      'page_place_description': pagePlaceDescription,
      'statut': statut,
      'visible': visible,
      'stripe_id': stripeId,
      'rating': rating,
      'last_availability': lastAvailability,
      'certificate': certificate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProviderRecordDocumentEquality implements Equality<ProviderRecord> {
  const ProviderRecordDocumentEquality();

  @override
  bool equals(ProviderRecord? e1, ProviderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdTime == e2?.createdTime &&
        e1?.adress == e2?.adress &&
        e1?.adressName == e2?.adressName &&
        e1?.codeZip == e2?.codeZip &&
        e1?.city == e2?.city &&
        e1?.latLng == e2?.latLng &&
        e1?.pageTitle == e2?.pageTitle &&
        e1?.pagePresentation == e2?.pagePresentation &&
        e1?.pagePlaceDescription == e2?.pagePlaceDescription &&
        listEquality.equals(e1?.myServices, e2?.myServices) &&
        listEquality.equals(e1?.myOrders, e2?.myOrders) &&
        e1?.statut == e2?.statut &&
        e1?.visible == e2?.visible &&
        listEquality.equals(e1?.myFollowers, e2?.myFollowers) &&
        e1?.stripeId == e2?.stripeId &&
        listEquality.equals(
            e1?.stripeExternalAccountId, e2?.stripeExternalAccountId) &&
        listEquality.equals(e1?.skills, e2?.skills) &&
        listEquality.equals(e1?.strengths, e2?.strengths) &&
        e1?.rating == e2?.rating &&
        e1?.lastAvailability == e2?.lastAvailability &&
        listEquality.equals(e1?.view, e2?.view) &&
        e1?.certificate == e2?.certificate;
  }

  @override
  int hash(ProviderRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.adress,
        e?.adressName,
        e?.codeZip,
        e?.city,
        e?.latLng,
        e?.pageTitle,
        e?.pagePresentation,
        e?.pagePlaceDescription,
        e?.myServices,
        e?.myOrders,
        e?.statut,
        e?.visible,
        e?.myFollowers,
        e?.stripeId,
        e?.stripeExternalAccountId,
        e?.skills,
        e?.strengths,
        e?.rating,
        e?.lastAvailability,
        e?.view,
        e?.certificate
      ]);

  @override
  bool isValidKey(Object? o) => o is ProviderRecord;
}
