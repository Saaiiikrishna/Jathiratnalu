import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'flags_record.g.dart';

abstract class FlagsRecord implements Built<FlagsRecord, FlagsRecordBuilder> {
  static Serializer<FlagsRecord> get serializer => _$flagsRecordSerializer;

  @BuiltValueField(wireName: 'entry_guidance')
  String? get entryGuidance;

  String? get note;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  String? get call;

  @BuiltValueField(wireName: 'limit_price')
  double? get limitPrice;

  @BuiltValueField(wireName: 'stop_loss')
  double? get stopLoss;

  double? get target1;

  double? get target2;

  double? get target3;

  String? get quantity;

  DocumentReference? get name;

  String? get product;

  @BuiltValueField(wireName: 'exptd_time')
  String? get exptdTime;

  String? get rewardtoratio;

  String? get probability;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FlagsRecordBuilder builder) => builder
    ..entryGuidance = ''
    ..note = ''
    ..call = ''
    ..limitPrice = 0.0
    ..stopLoss = 0.0
    ..target1 = 0.0
    ..target2 = 0.0
    ..target3 = 0.0
    ..quantity = ''
    ..product = ''
    ..exptdTime = ''
    ..rewardtoratio = ''
    ..probability = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('flags');

  static Stream<FlagsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FlagsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FlagsRecord._();
  factory FlagsRecord([void Function(FlagsRecordBuilder) updates]) =
      _$FlagsRecord;

  static FlagsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFlagsRecordData({
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
  DocumentReference? name,
  String? product,
  String? exptdTime,
  String? rewardtoratio,
  String? probability,
}) {
  final firestoreData = serializers.toFirestore(
    FlagsRecord.serializer,
    FlagsRecord(
      (f) => f
        ..entryGuidance = entryGuidance
        ..note = note
        ..createdAt = createdAt
        ..call = call
        ..limitPrice = limitPrice
        ..stopLoss = stopLoss
        ..target1 = target1
        ..target2 = target2
        ..target3 = target3
        ..quantity = quantity
        ..name = name
        ..product = product
        ..exptdTime = exptdTime
        ..rewardtoratio = rewardtoratio
        ..probability = probability,
    ),
  );

  return firestoreData;
}
