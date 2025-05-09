import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideoTrainingRecord extends FirestoreRecord {
  VideoTrainingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "primary" field.
  bool? _primary;
  bool get primary => _primary ?? false;
  bool hasPrimary() => _primary != null;

  // "level" field.
  int? _level;
  int get level => _level ?? 0;
  bool hasLevel() => _level != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _duration = castToType<int>(snapshotData['duration']);
    _url = snapshotData['url'] as String?;
    _primary = snapshotData['primary'] as bool?;
    _level = castToType<int>(snapshotData['level']);
    _index = castToType<int>(snapshotData['index']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('video_training');

  static Stream<VideoTrainingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideoTrainingRecord.fromSnapshot(s));

  static Future<VideoTrainingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideoTrainingRecord.fromSnapshot(s));

  static VideoTrainingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VideoTrainingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideoTrainingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideoTrainingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideoTrainingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideoTrainingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideoTrainingRecordData({
  String? title,
  String? description,
  int? duration,
  String? url,
  bool? primary,
  int? level,
  int? index,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'duration': duration,
      'url': url,
      'primary': primary,
      'level': level,
      'index': index,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideoTrainingRecordDocumentEquality
    implements Equality<VideoTrainingRecord> {
  const VideoTrainingRecordDocumentEquality();

  @override
  bool equals(VideoTrainingRecord? e1, VideoTrainingRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.duration == e2?.duration &&
        e1?.url == e2?.url &&
        e1?.primary == e2?.primary &&
        e1?.level == e2?.level &&
        e1?.index == e2?.index;
  }

  @override
  int hash(VideoTrainingRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.duration,
        e?.url,
        e?.primary,
        e?.level,
        e?.index
      ]);

  @override
  bool isValidKey(Object? o) => o is VideoTrainingRecord;
}
