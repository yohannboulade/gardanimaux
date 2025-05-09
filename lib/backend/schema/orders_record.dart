import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "provider_ref" field.
  DocumentReference? _providerRef;
  DocumentReference? get providerRef => _providerRef;
  bool hasProviderRef() => _providerRef != null;

  // "total_price" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "service" field.
  String? _service;
  String get service => _service ?? '';
  bool hasService() => _service != null;

  // "pet" field.
  String? _pet;
  String get pet => _pet ?? '';
  bool hasPet() => _pet != null;

  // "unit_price" field.
  double? _unitPrice;
  double get unitPrice => _unitPrice ?? 0.0;
  bool hasUnitPrice() => _unitPrice != null;

  // "unit_type" field.
  String? _unitType;
  String get unitType => _unitType ?? '';
  bool hasUnitType() => _unitType != null;

  // "unit" field.
  double? _unit;
  double get unit => _unit ?? 0.0;
  bool hasUnit() => _unit != null;

  // "dateStart" field.
  DateTime? _dateStart;
  DateTime? get dateStart => _dateStart;
  bool hasDateStart() => _dateStart != null;

  // "dateEnd" field.
  DateTime? _dateEnd;
  DateTime? get dateEnd => _dateEnd;
  bool hasDateEnd() => _dateEnd != null;

  // "payment_stripe_id" field.
  String? _paymentStripeId;
  String get paymentStripeId => _paymentStripeId ?? '';
  bool hasPaymentStripeId() => _paymentStripeId != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "message_id" field.
  DocumentReference? _messageId;
  DocumentReference? get messageId => _messageId;
  bool hasMessageId() => _messageId != null;

  // "transfert_stripe_id" field.
  String? _transfertStripeId;
  String get transfertStripeId => _transfertStripeId ?? '';
  bool hasTransfertStripeId() => _transfertStripeId != null;

  // "recommendation_id" field.
  DocumentReference? _recommendationId;
  DocumentReference? get recommendationId => _recommendationId;
  bool hasRecommendationId() => _recommendationId != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _providerRef = snapshotData['provider_ref'] as DocumentReference?;
    _totalPrice = castToType<double>(snapshotData['total_price']);
    _status = castToType<int>(snapshotData['status']);
    _service = snapshotData['service'] as String?;
    _pet = snapshotData['pet'] as String?;
    _unitPrice = castToType<double>(snapshotData['unit_price']);
    _unitType = snapshotData['unit_type'] as String?;
    _unit = castToType<double>(snapshotData['unit']);
    _dateStart = snapshotData['dateStart'] as DateTime?;
    _dateEnd = snapshotData['dateEnd'] as DateTime?;
    _paymentStripeId = snapshotData['payment_stripe_id'] as String?;
    _notes = snapshotData['notes'] as String?;
    _messageId = snapshotData['message_id'] as DocumentReference?;
    _transfertStripeId = snapshotData['transfert_stripe_id'] as String?;
    _recommendationId = snapshotData['recommendation_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DateTime? createdTime,
  DocumentReference? userRef,
  DocumentReference? providerRef,
  double? totalPrice,
  int? status,
  String? service,
  String? pet,
  double? unitPrice,
  String? unitType,
  double? unit,
  DateTime? dateStart,
  DateTime? dateEnd,
  String? paymentStripeId,
  String? notes,
  DocumentReference? messageId,
  String? transfertStripeId,
  DocumentReference? recommendationId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'user_ref': userRef,
      'provider_ref': providerRef,
      'total_price': totalPrice,
      'status': status,
      'service': service,
      'pet': pet,
      'unit_price': unitPrice,
      'unit_type': unitType,
      'unit': unit,
      'dateStart': dateStart,
      'dateEnd': dateEnd,
      'payment_stripe_id': paymentStripeId,
      'notes': notes,
      'message_id': messageId,
      'transfert_stripe_id': transfertStripeId,
      'recommendation_id': recommendationId,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.userRef == e2?.userRef &&
        e1?.providerRef == e2?.providerRef &&
        e1?.totalPrice == e2?.totalPrice &&
        e1?.status == e2?.status &&
        e1?.service == e2?.service &&
        e1?.pet == e2?.pet &&
        e1?.unitPrice == e2?.unitPrice &&
        e1?.unitType == e2?.unitType &&
        e1?.unit == e2?.unit &&
        e1?.dateStart == e2?.dateStart &&
        e1?.dateEnd == e2?.dateEnd &&
        e1?.paymentStripeId == e2?.paymentStripeId &&
        e1?.notes == e2?.notes &&
        e1?.messageId == e2?.messageId &&
        e1?.transfertStripeId == e2?.transfertStripeId &&
        e1?.recommendationId == e2?.recommendationId;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.userRef,
        e?.providerRef,
        e?.totalPrice,
        e?.status,
        e?.service,
        e?.pet,
        e?.unitPrice,
        e?.unitType,
        e?.unit,
        e?.dateStart,
        e?.dateEnd,
        e?.paymentStripeId,
        e?.notes,
        e?.messageId,
        e?.transfertStripeId,
        e?.recommendationId
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
