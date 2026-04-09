import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'park_record.g.dart';

abstract class ParkRecord implements Built<ParkRecord, ParkRecordBuilder> {
  static Serializer<ParkRecord> get serializer => _$parkRecordSerializer;

  String? get name;

  LatLng? get pin;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ParkRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('park');

  static Stream<ParkRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ParkRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ParkRecord._();
  factory ParkRecord([void Function(ParkRecordBuilder) updates]) = _$ParkRecord;

  static ParkRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createParkRecordData({
  String? name,
  LatLng? pin,
}) {
  final firestoreData = serializers.toFirestore(
    ParkRecord.serializer,
    ParkRecord(
      (p) => p
        ..name = name
        ..pin = pin,
    ),
  );

  return firestoreData;
}
