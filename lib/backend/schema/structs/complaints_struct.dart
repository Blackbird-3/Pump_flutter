// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComplaintsStruct extends FFFirebaseStruct {
  ComplaintsStruct({
    String? name,
    String? make,
    String? centre,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _make = make,
        _centre = centre,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "make" field.
  String? _make;
  String get make => _make ?? '';
  set make(String? val) => _make = val;
  bool hasMake() => _make != null;

  // "centre" field.
  String? _centre;
  String get centre => _centre ?? '';
  set centre(String? val) => _centre = val;
  bool hasCentre() => _centre != null;

  static ComplaintsStruct fromMap(Map<String, dynamic> data) =>
      ComplaintsStruct(
        name: data['name'] as String?,
        make: data['make'] as String?,
        centre: data['centre'] as String?,
      );

  static ComplaintsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ComplaintsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'make': _make,
        'centre': _centre,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'make': serializeParam(
          _make,
          ParamType.String,
        ),
        'centre': serializeParam(
          _centre,
          ParamType.String,
        ),
      }.withoutNulls;

  static ComplaintsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ComplaintsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        make: deserializeParam(
          data['make'],
          ParamType.String,
          false,
        ),
        centre: deserializeParam(
          data['centre'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ComplaintsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ComplaintsStruct &&
        name == other.name &&
        make == other.make &&
        centre == other.centre;
  }

  @override
  int get hashCode => const ListEquality().hash([name, make, centre]);
}

ComplaintsStruct createComplaintsStruct({
  String? name,
  String? make,
  String? centre,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ComplaintsStruct(
      name: name,
      make: make,
      centre: centre,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ComplaintsStruct? updateComplaintsStruct(
  ComplaintsStruct? complaints, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    complaints
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addComplaintsStructData(
  Map<String, dynamic> firestoreData,
  ComplaintsStruct? complaints,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (complaints == null) {
    return;
  }
  if (complaints.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && complaints.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final complaintsData = getComplaintsFirestoreData(complaints, forFieldValue);
  final nestedData = complaintsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = complaints.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getComplaintsFirestoreData(
  ComplaintsStruct? complaints, [
  bool forFieldValue = false,
]) {
  if (complaints == null) {
    return {};
  }
  final firestoreData = mapToFirestore(complaints.toMap());

  // Add any Firestore field values
  complaints.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getComplaintsListFirestoreData(
  List<ComplaintsStruct>? complaintss,
) =>
    complaintss?.map((e) => getComplaintsFirestoreData(e, true)).toList() ?? [];
