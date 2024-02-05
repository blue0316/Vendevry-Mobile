// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceCategoryStruct extends FFFirebaseStruct {
  ServiceCategoryStruct({
    int? id,
    int? parentId,
    String? name,
    String? description,
    String? logo,
    String? banner,
    int? status,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _parentId = parentId,
        _name = name,
        _description = description,
        _logo = logo,
        _banner = banner,
        _status = status,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "parent_id" field.
  int? _parentId;
  int get parentId => _parentId ?? 0;
  set parentId(int? val) => _parentId = val;
  void incrementParentId(int amount) => _parentId = parentId + amount;
  bool hasParentId() => _parentId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;
  bool hasLogo() => _logo != null;

  // "banner" field.
  String? _banner;
  String get banner => _banner ?? '';
  set banner(String? val) => _banner = val;
  bool hasBanner() => _banner != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;
  void incrementStatus(int amount) => _status = status + amount;
  bool hasStatus() => _status != null;

  static ServiceCategoryStruct fromMap(Map<String, dynamic> data) =>
      ServiceCategoryStruct(
        id: castToType<int>(data['id']),
        parentId: castToType<int>(data['parent_id']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        logo: data['logo'] as String?,
        banner: data['banner'] as String?,
        status: castToType<int>(data['status']),
      );

  static ServiceCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? ServiceCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'parent_id': _parentId,
        'name': _name,
        'description': _description,
        'logo': _logo,
        'banner': _banner,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'parent_id': serializeParam(
          _parentId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'banner': serializeParam(
          _banner,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
      }.withoutNulls;

  static ServiceCategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      ServiceCategoryStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        parentId: deserializeParam(
          data['parent_id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
        banner: deserializeParam(
          data['banner'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ServiceCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServiceCategoryStruct &&
        id == other.id &&
        parentId == other.parentId &&
        name == other.name &&
        description == other.description &&
        logo == other.logo &&
        banner == other.banner &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, parentId, name, description, logo, banner, status]);
}

ServiceCategoryStruct createServiceCategoryStruct({
  int? id,
  int? parentId,
  String? name,
  String? description,
  String? logo,
  String? banner,
  int? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ServiceCategoryStruct(
      id: id,
      parentId: parentId,
      name: name,
      description: description,
      logo: logo,
      banner: banner,
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ServiceCategoryStruct? updateServiceCategoryStruct(
  ServiceCategoryStruct? serviceCategory, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    serviceCategory
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addServiceCategoryStructData(
  Map<String, dynamic> firestoreData,
  ServiceCategoryStruct? serviceCategory,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (serviceCategory == null) {
    return;
  }
  if (serviceCategory.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && serviceCategory.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final serviceCategoryData =
      getServiceCategoryFirestoreData(serviceCategory, forFieldValue);
  final nestedData =
      serviceCategoryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = serviceCategory.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getServiceCategoryFirestoreData(
  ServiceCategoryStruct? serviceCategory, [
  bool forFieldValue = false,
]) {
  if (serviceCategory == null) {
    return {};
  }
  final firestoreData = mapToFirestore(serviceCategory.toMap());

  // Add any Firestore field values
  serviceCategory.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getServiceCategoryListFirestoreData(
  List<ServiceCategoryStruct>? serviceCategorys,
) =>
    serviceCategorys
        ?.map((e) => getServiceCategoryFirestoreData(e, true))
        .toList() ??
    [];
