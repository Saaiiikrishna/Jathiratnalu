import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EquityRecord extends FirestoreRecord {
  EquityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "entry_guidance" field.
  String? _entryGuidance;
  String get entryGuidance => _entryGuidance ?? '';
  bool hasEntryGuidance() => _entryGuidance != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "call" field.
  String? _call;
  String get call => _call ?? '';
  bool hasCall() => _call != null;

  // "limit_price" field.
  double? _limitPrice;
  double get limitPrice => _limitPrice ?? 0.0;
  bool hasLimitPrice() => _limitPrice != null;

  // "stop_loss" field.
  double? _stopLoss;
  double get stopLoss => _stopLoss ?? 0.0;
  bool hasStopLoss() => _stopLoss != null;

  // "target1" field.
  double? _target1;
  double get target1 => _target1 ?? 0.0;
  bool hasTarget1() => _target1 != null;

  // "target2" field.
  double? _target2;
  double get target2 => _target2 ?? 0.0;
  bool hasTarget2() => _target2 != null;

  // "target3" field.
  double? _target3;
  double get target3 => _target3 ?? 0.0;
  bool hasTarget3() => _target3 != null;

  // "quantity" field.
  String? _quantity;
  String get quantity => _quantity ?? '';
  bool hasQuantity() => _quantity != null;

  // "product" field.
  String? _product;
  String get product => _product ?? '';
  bool hasProduct() => _product != null;

  // "exptd_time" field.
  String? _exptdTime;
  String get exptdTime => _exptdTime ?? '';
  bool hasExptdTime() => _exptdTime != null;

  // "rewardtoratio" field.
  String? _rewardtoratio;
  String get rewardtoratio => _rewardtoratio ?? '';
  bool hasRewardtoratio() => _rewardtoratio != null;

  // "probability" field.
  String? _probability;
  String get probability => _probability ?? '';
  bool hasProbability() => _probability != null;

  // "instrument" field.
  String? _instrument;
  String get instrument => _instrument ?? '';
  bool hasInstrument() => _instrument != null;

  // "markets" field.
  String? _markets;
  String get markets => _markets ?? '';
  bool hasMarkets() => _markets != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "segment" field.
  String? _segment;
  String get segment => _segment ?? '';
  bool hasSegment() => _segment != null;

  void _initializeFields() {
    _entryGuidance = snapshotData['entry_guidance'] as String?;
    _note = snapshotData['note'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _call = snapshotData['call'] as String?;
    _limitPrice = castToType<double>(snapshotData['limit_price']);
    _stopLoss = castToType<double>(snapshotData['stop_loss']);
    _target1 = castToType<double>(snapshotData['target1']);
    _target2 = castToType<double>(snapshotData['target2']);
    _target3 = castToType<double>(snapshotData['target3']);
    _quantity = snapshotData['quantity'] as String?;
    _product = snapshotData['product'] as String?;
    _exptdTime = snapshotData['exptd_time'] as String?;
    _rewardtoratio = snapshotData['rewardtoratio'] as String?;
    _probability = snapshotData['probability'] as String?;
    _instrument = snapshotData['instrument'] as String?;
    _markets = snapshotData['markets'] as String?;
    _name = snapshotData['name'] as String?;
    _segment = snapshotData['segment'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('equity');

  static Stream<EquityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EquityRecord.fromSnapshot(s));

  static Future<EquityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EquityRecord.fromSnapshot(s));

  static EquityRecord fromSnapshot(DocumentSnapshot snapshot) => EquityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EquityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EquityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EquityRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createEquityRecordData({
  String? entryGuidance,
  String? note,
  DateTime? createdAt,
  String? call,
  double? limitPrice,
  double? stopLoss,
  double? target1,
  double? target2,
  double? target3,
  String? quantity,
  String? product,
  String? exptdTime,
  String? rewardtoratio,
  String? probability,
  String? instrument,
  String? markets,
  String? name,
  String? segment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'entry_guidance': entryGuidance,
      'note': note,
      'created_at': createdAt,
      'call': call,
      'limit_price': limitPrice,
      'stop_loss': stopLoss,
      'target1': target1,
      'target2': target2,
      'target3': target3,
      'quantity': quantity,
      'product': product,
      'exptd_time': exptdTime,
      'rewardtoratio': rewardtoratio,
      'probability': probability,
      'instrument': instrument,
      'markets': markets,
      'name': name,
      'segment': segment,
    }.withoutNulls,
  );

  return firestoreData;
}
