// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flags_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FlagsRecord> _$flagsRecordSerializer = new _$FlagsRecordSerializer();

class _$FlagsRecordSerializer implements StructuredSerializer<FlagsRecord> {
  @override
  final Iterable<Type> types = const [FlagsRecord, _$FlagsRecord];
  @override
  final String wireName = 'FlagsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FlagsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.entryGuidance;
    if (value != null) {
      result
        ..add('entry_guidance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.note;
    if (value != null) {
      result
        ..add('note')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.call;
    if (value != null) {
      result
        ..add('call')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.limitPrice;
    if (value != null) {
      result
        ..add('limit_price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.stopLoss;
    if (value != null) {
      result
        ..add('stop_loss')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.target1;
    if (value != null) {
      result
        ..add('target1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.target2;
    if (value != null) {
      result
        ..add('target2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.target3;
    if (value != null) {
      result
        ..add('target3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.product;
    if (value != null) {
      result
        ..add('product')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.exptdTime;
    if (value != null) {
      result
        ..add('exptd_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rewardtoratio;
    if (value != null) {
      result
        ..add('rewardtoratio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.probability;
    if (value != null) {
      result
        ..add('probability')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FlagsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FlagsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'entry_guidance':
          result.entryGuidance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'call':
          result.call = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'limit_price':
          result.limitPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'stop_loss':
          result.stopLoss = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'target1':
          result.target1 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'target2':
          result.target2 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'target3':
          result.target3 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'product':
          result.product = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'exptd_time':
          result.exptdTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rewardtoratio':
          result.rewardtoratio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'probability':
          result.probability = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FlagsRecord extends FlagsRecord {
  @override
  final String? entryGuidance;
  @override
  final String? note;
  @override
  final DateTime? createdAt;
  @override
  final String? call;
  @override
  final double? limitPrice;
  @override
  final double? stopLoss;
  @override
  final double? target1;
  @override
  final double? target2;
  @override
  final double? target3;
  @override
  final String? quantity;
  @override
  final DocumentReference<Object?>? name;
  @override
  final String? product;
  @override
  final String? exptdTime;
  @override
  final String? rewardtoratio;
  @override
  final String? probability;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FlagsRecord([void Function(FlagsRecordBuilder)? updates]) =>
      (new FlagsRecordBuilder()..update(updates))._build();

  _$FlagsRecord._(
      {this.entryGuidance,
      this.note,
      this.createdAt,
      this.call,
      this.limitPrice,
      this.stopLoss,
      this.target1,
      this.target2,
      this.target3,
      this.quantity,
      this.name,
      this.product,
      this.exptdTime,
      this.rewardtoratio,
      this.probability,
      this.ffRef})
      : super._();

  @override
  FlagsRecord rebuild(void Function(FlagsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlagsRecordBuilder toBuilder() => new FlagsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlagsRecord &&
        entryGuidance == other.entryGuidance &&
        note == other.note &&
        createdAt == other.createdAt &&
        call == other.call &&
        limitPrice == other.limitPrice &&
        stopLoss == other.stopLoss &&
        target1 == other.target1 &&
        target2 == other.target2 &&
        target3 == other.target3 &&
        quantity == other.quantity &&
        name == other.name &&
        product == other.product &&
        exptdTime == other.exptdTime &&
        rewardtoratio == other.rewardtoratio &&
        probability == other.probability &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entryGuidance.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, call.hashCode);
    _$hash = $jc(_$hash, limitPrice.hashCode);
    _$hash = $jc(_$hash, stopLoss.hashCode);
    _$hash = $jc(_$hash, target1.hashCode);
    _$hash = $jc(_$hash, target2.hashCode);
    _$hash = $jc(_$hash, target3.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jc(_$hash, exptdTime.hashCode);
    _$hash = $jc(_$hash, rewardtoratio.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlagsRecord')
          ..add('entryGuidance', entryGuidance)
          ..add('note', note)
          ..add('createdAt', createdAt)
          ..add('call', call)
          ..add('limitPrice', limitPrice)
          ..add('stopLoss', stopLoss)
          ..add('target1', target1)
          ..add('target2', target2)
          ..add('target3', target3)
          ..add('quantity', quantity)
          ..add('name', name)
          ..add('product', product)
          ..add('exptdTime', exptdTime)
          ..add('rewardtoratio', rewardtoratio)
          ..add('probability', probability)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FlagsRecordBuilder implements Builder<FlagsRecord, FlagsRecordBuilder> {
  _$FlagsRecord? _$v;

  String? _entryGuidance;
  String? get entryGuidance => _$this._entryGuidance;
  set entryGuidance(String? entryGuidance) =>
      _$this._entryGuidance = entryGuidance;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _call;
  String? get call => _$this._call;
  set call(String? call) => _$this._call = call;

  double? _limitPrice;
  double? get limitPrice => _$this._limitPrice;
  set limitPrice(double? limitPrice) => _$this._limitPrice = limitPrice;

  double? _stopLoss;
  double? get stopLoss => _$this._stopLoss;
  set stopLoss(double? stopLoss) => _$this._stopLoss = stopLoss;

  double? _target1;
  double? get target1 => _$this._target1;
  set target1(double? target1) => _$this._target1 = target1;

  double? _target2;
  double? get target2 => _$this._target2;
  set target2(double? target2) => _$this._target2 = target2;

  double? _target3;
  double? get target3 => _$this._target3;
  set target3(double? target3) => _$this._target3 = target3;

  String? _quantity;
  String? get quantity => _$this._quantity;
  set quantity(String? quantity) => _$this._quantity = quantity;

  DocumentReference<Object?>? _name;
  DocumentReference<Object?>? get name => _$this._name;
  set name(DocumentReference<Object?>? name) => _$this._name = name;

  String? _product;
  String? get product => _$this._product;
  set product(String? product) => _$this._product = product;

  String? _exptdTime;
  String? get exptdTime => _$this._exptdTime;
  set exptdTime(String? exptdTime) => _$this._exptdTime = exptdTime;

  String? _rewardtoratio;
  String? get rewardtoratio => _$this._rewardtoratio;
  set rewardtoratio(String? rewardtoratio) =>
      _$this._rewardtoratio = rewardtoratio;

  String? _probability;
  String? get probability => _$this._probability;
  set probability(String? probability) => _$this._probability = probability;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FlagsRecordBuilder() {
    FlagsRecord._initializeBuilder(this);
  }

  FlagsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entryGuidance = $v.entryGuidance;
      _note = $v.note;
      _createdAt = $v.createdAt;
      _call = $v.call;
      _limitPrice = $v.limitPrice;
      _stopLoss = $v.stopLoss;
      _target1 = $v.target1;
      _target2 = $v.target2;
      _target3 = $v.target3;
      _quantity = $v.quantity;
      _name = $v.name;
      _product = $v.product;
      _exptdTime = $v.exptdTime;
      _rewardtoratio = $v.rewardtoratio;
      _probability = $v.probability;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlagsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlagsRecord;
  }

  @override
  void update(void Function(FlagsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlagsRecord build() => _build();

  _$FlagsRecord _build() {
    final _$result = _$v ??
        new _$FlagsRecord._(
            entryGuidance: entryGuidance,
            note: note,
            createdAt: createdAt,
            call: call,
            limitPrice: limitPrice,
            stopLoss: stopLoss,
            target1: target1,
            target2: target2,
            target3: target3,
            quantity: quantity,
            name: name,
            product: product,
            exptdTime: exptdTime,
            rewardtoratio: rewardtoratio,
            probability: probability,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
