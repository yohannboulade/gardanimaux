// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TraningViewStruct extends FFFirebaseStruct {
  TraningViewStruct({
    int? index,
    bool? primary,
    DocumentReference? videoRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _index = index,
        _primary = primary,
        _videoRef = videoRef,
        super(firestoreUtilData);

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  // "primary" field.
  bool? _primary;
  bool get primary => _primary ?? false;
  set primary(bool? val) => _primary = val;

  bool hasPrimary() => _primary != null;

  // "video_ref" field.
  DocumentReference? _videoRef;
  DocumentReference? get videoRef => _videoRef;
  set videoRef(DocumentReference? val) => _videoRef = val;

  bool hasVideoRef() => _videoRef != null;

  static TraningViewStruct fromMap(Map<String, dynamic> data) =>
      TraningViewStruct(
        index: castToType<int>(data['index']),
        primary: data['primary'] as bool?,
        videoRef: data['video_ref'] as DocumentReference?,
      );

  static TraningViewStruct? maybeFromMap(dynamic data) => data is Map
      ? TraningViewStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'index': _index,
        'primary': _primary,
        'video_ref': _videoRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
        'primary': serializeParam(
          _primary,
          ParamType.bool,
        ),
        'video_ref': serializeParam(
          _videoRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static TraningViewStruct fromSerializableMap(Map<String, dynamic> data) =>
      TraningViewStruct(
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
        primary: deserializeParam(
          data['primary'],
          ParamType.bool,
          false,
        ),
        videoRef: deserializeParam(
          data['video_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['video_training'],
        ),
      );

  static TraningViewStruct fromAlgoliaData(Map<String, dynamic> data) =>
      TraningViewStruct(
        index: convertAlgoliaParam(
          data['index'],
          ParamType.int,
          false,
        ),
        primary: convertAlgoliaParam(
          data['primary'],
          ParamType.bool,
          false,
        ),
        videoRef: convertAlgoliaParam(
          data['video_ref'],
          ParamType.DocumentReference,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'TraningViewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TraningViewStruct &&
        index == other.index &&
        primary == other.primary &&
        videoRef == other.videoRef;
  }

  @override
  int get hashCode => const ListEquality().hash([index, primary, videoRef]);
}

TraningViewStruct createTraningViewStruct({
  int? index,
  bool? primary,
  DocumentReference? videoRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TraningViewStruct(
      index: index,
      primary: primary,
      videoRef: videoRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TraningViewStruct? updateTraningViewStruct(
  TraningViewStruct? traningView, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    traningView
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTraningViewStructData(
  Map<String, dynamic> firestoreData,
  TraningViewStruct? traningView,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (traningView == null) {
    return;
  }
  if (traningView.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && traningView.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final traningViewData =
      getTraningViewFirestoreData(traningView, forFieldValue);
  final nestedData =
      traningViewData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = traningView.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTraningViewFirestoreData(
  TraningViewStruct? traningView, [
  bool forFieldValue = false,
]) {
  if (traningView == null) {
    return {};
  }
  final firestoreData = mapToFirestore(traningView.toMap());

  // Add any Firestore field values
  traningView.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTraningViewListFirestoreData(
  List<TraningViewStruct>? traningViews,
) =>
    traningViews?.map((e) => getTraningViewFirestoreData(e, true)).toList() ??
    [];
