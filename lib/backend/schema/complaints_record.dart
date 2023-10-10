import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComplaintsRecord extends FirestoreRecord {
  ComplaintsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "centre" field.
  String? _centre;
  String get centre => _centre ?? '';
  bool hasCentre() => _centre != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "deliv_date" field.
  DateTime? _delivDate;
  DateTime? get delivDate => _delivDate;
  bool hasDelivDate() => _delivDate != null;

  // "deliv_to" field.
  String? _delivTo;
  String get delivTo => _delivTo ?? '';
  bool hasDelivTo() => _delivTo != null;

  // "make" field.
  String? _make;
  String get make => _make ?? '';
  bool hasMake() => _make != null;

  // "mobile" field.
  int? _mobile;
  int get mobile => _mobile ?? 0;
  bool hasMobile() => _mobile != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "nature" field.
  String? _nature;
  String get nature => _nature ?? '';
  bool hasNature() => _nature != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "serial" field.
  int? _serial;
  int get serial => _serial ?? 0;
  bool hasSerial() => _serial != null;

  // "warranty" field.
  String? _warranty;
  String get warranty => _warranty ?? '';
  bool hasWarranty() => _warranty != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _centre = snapshotData['centre'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _delivDate = snapshotData['deliv_date'] as DateTime?;
    _delivTo = snapshotData['deliv_to'] as String?;
    _make = snapshotData['make'] as String?;
    _mobile = castToType<int>(snapshotData['mobile']);
    _name = snapshotData['name'] as String?;
    _nature = snapshotData['nature'] as String?;
    _photo = snapshotData['photo'] as String?;
    _serial = castToType<int>(snapshotData['serial']);
    _warranty = snapshotData['warranty'] as String?;
    _model = snapshotData['model'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('complaints');

  static Stream<ComplaintsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComplaintsRecord.fromSnapshot(s));

  static Future<ComplaintsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComplaintsRecord.fromSnapshot(s));

  static ComplaintsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComplaintsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComplaintsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComplaintsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComplaintsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComplaintsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComplaintsRecordData({
  String? centre,
  DateTime? date,
  DateTime? delivDate,
  String? delivTo,
  String? make,
  int? mobile,
  String? name,
  String? nature,
  String? photo,
  int? serial,
  String? warranty,
  String? model,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'centre': centre,
      'date': date,
      'deliv_date': delivDate,
      'deliv_to': delivTo,
      'make': make,
      'mobile': mobile,
      'name': name,
      'nature': nature,
      'photo': photo,
      'serial': serial,
      'warranty': warranty,
      'model': model,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComplaintsRecordDocumentEquality implements Equality<ComplaintsRecord> {
  const ComplaintsRecordDocumentEquality();

  @override
  bool equals(ComplaintsRecord? e1, ComplaintsRecord? e2) {
    return e1?.centre == e2?.centre &&
        e1?.date == e2?.date &&
        e1?.delivDate == e2?.delivDate &&
        e1?.delivTo == e2?.delivTo &&
        e1?.make == e2?.make &&
        e1?.mobile == e2?.mobile &&
        e1?.name == e2?.name &&
        e1?.nature == e2?.nature &&
        e1?.photo == e2?.photo &&
        e1?.serial == e2?.serial &&
        e1?.warranty == e2?.warranty &&
        e1?.model == e2?.model &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(ComplaintsRecord? e) => const ListEquality().hash([
        e?.centre,
        e?.date,
        e?.delivDate,
        e?.delivTo,
        e?.make,
        e?.mobile,
        e?.name,
        e?.nature,
        e?.photo,
        e?.serial,
        e?.warranty,
        e?.model,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is ComplaintsRecord;
}
