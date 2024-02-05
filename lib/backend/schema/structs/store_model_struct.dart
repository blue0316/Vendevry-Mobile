// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoreModelStruct extends FFFirebaseStruct {
  StoreModelStruct({
    int? id,
    int? userId,
    String? name,
    String? desc,
    String? role,
    String? logo,
    String? taxid,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _userId = userId,
        _name = name,
        _desc = desc,
        _role = role,
        _logo = logo,
        _taxid = taxid,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;
  void incrementUserId(int amount) => _userId = userId + amount;
  bool hasUserId() => _userId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;
  bool hasDesc() => _desc != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;
  bool hasRole() => _role != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;
  bool hasLogo() => _logo != null;

  // "taxid" field.
  String? _taxid;
  String get taxid => _taxid ?? '';
  set taxid(String? val) => _taxid = val;
  bool hasTaxid() => _taxid != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  set updatedAt(DateTime? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  static StoreModelStruct fromMap(Map<String, dynamic> data) =>
      StoreModelStruct(
        id: castToType<int>(data['id']),
        userId: castToType<int>(data['user_id']),
        name: data['name'] as String?,
        desc: data['desc'] as String?,
        role: data['role'] as String?,
        logo: data['logo'] as String?,
        taxid: data['taxid'] as String?,
        createdAt: data['created_at'] as DateTime?,
        updatedAt: data['updated_at'] as DateTime?,
      );

  static StoreModelStruct? maybeFromMap(dynamic data) => data is Map
      ? StoreModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_id': _userId,
        'name': _name,
        'desc': _desc,
        'role': _role,
        'logo': _logo,
        'taxid': _taxid,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'taxid': serializeParam(
          _taxid,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static StoreModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      StoreModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
        taxid: deserializeParam(
          data['taxid'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'StoreModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StoreModelStruct &&
        id == other.id &&
        userId == other.userId &&
        name == other.name &&
        desc == other.desc &&
        role == other.role &&
        logo == other.logo &&
        taxid == other.taxid &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, userId, name, desc, role, logo, taxid, createdAt, updatedAt]);
}

StoreModelStruct createStoreModelStruct({
  int? id,
  int? userId,
  String? name,
  String? desc,
  String? role,
  String? logo,
  String? taxid,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StoreModelStruct(
      id: id,
      userId: userId,
      name: name,
      desc: desc,
      role: role,
      logo: logo,
      taxid: taxid,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StoreModelStruct? updateStoreModelStruct(
  StoreModelStruct? storeModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    storeModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStoreModelStructData(
  Map<String, dynamic> firestoreData,
  StoreModelStruct? storeModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (storeModel == null) {
    return;
  }
  if (storeModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && storeModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final storeModelData = getStoreModelFirestoreData(storeModel, forFieldValue);
  final nestedData = storeModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = storeModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStoreModelFirestoreData(
  StoreModelStruct? storeModel, [
  bool forFieldValue = false,
]) {
  if (storeModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(storeModel.toMap());

  // Add any Firestore field values
  storeModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStoreModelListFirestoreData(
  List<StoreModelStruct>? storeModels,
) =>
    storeModels?.map((e) => getStoreModelFirestoreData(e, true)).toList() ?? [];
