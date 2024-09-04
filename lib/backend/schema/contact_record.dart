import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContactRecord extends FirestoreRecord {
  ContactRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "contactNumber" field.
  int? _contactNumber;
  int get contactNumber => _contactNumber ?? 0;
  bool hasContactNumber() => _contactNumber != null;

  // "contactName" field.
  String? _contactName;
  String get contactName => _contactName ?? '';
  bool hasContactName() => _contactName != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  void _initializeFields() {
    _contactNumber = castToType<int>(snapshotData['contactNumber']);
    _contactName = snapshotData['contactName'] as String?;
    _photo = snapshotData['photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contact');

  static Stream<ContactRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContactRecord.fromSnapshot(s));

  static Future<ContactRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContactRecord.fromSnapshot(s));

  static ContactRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContactRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContactRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContactRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContactRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContactRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContactRecordData({
  int? contactNumber,
  String? contactName,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'contactNumber': contactNumber,
      'contactName': contactName,
      'photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContactRecordDocumentEquality implements Equality<ContactRecord> {
  const ContactRecordDocumentEquality();

  @override
  bool equals(ContactRecord? e1, ContactRecord? e2) {
    return e1?.contactNumber == e2?.contactNumber &&
        e1?.contactName == e2?.contactName &&
        e1?.photo == e2?.photo;
  }

  @override
  int hash(ContactRecord? e) =>
      const ListEquality().hash([e?.contactNumber, e?.contactName, e?.photo]);

  @override
  bool isValidKey(Object? o) => o is ContactRecord;
}
