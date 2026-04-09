// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'park_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ParkRecord> _$parkRecordSerializer = new _$ParkRecordSerializer();

class _$ParkRecordSerializer implements StructuredSerializer<ParkRecord> {
  @override
  final Iterable<Type> types = const [ParkRecord, _$ParkRecord];
  @override
  final String wireName = 'ParkRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ParkRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pin;
    if (value != null) {
      result
        ..add('pin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
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
  ParkRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParkRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pin':
          result.pin = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
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

class _$ParkRecord extends ParkRecord {
  @override
  final String? name;
  @override
  final LatLng? pin;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ParkRecord([void Function(ParkRecordBuilder)? updates]) =>
      (new ParkRecordBuilder()..update(updates))._build();

  _$ParkRecord._({this.name, this.pin, this.ffRef}) : super._();

  @override
  ParkRecord rebuild(void Function(ParkRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParkRecordBuilder toBuilder() => new ParkRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParkRecord &&
        name == other.name &&
        pin == other.pin &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), pin.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParkRecord')
          ..add('name', name)
          ..add('pin', pin)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ParkRecordBuilder implements Builder<ParkRecord, ParkRecordBuilder> {
  _$ParkRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  LatLng? _pin;
  LatLng? get pin => _$this._pin;
  set pin(LatLng? pin) => _$this._pin = pin;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ParkRecordBuilder() {
    ParkRecord._initializeBuilder(this);
  }

  ParkRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _pin = $v.pin;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParkRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParkRecord;
  }

  @override
  void update(void Function(ParkRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParkRecord build() => _build();

  _$ParkRecord _build() {
    final _$result =
        _$v ?? new _$ParkRecord._(name: name, pin: pin, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
