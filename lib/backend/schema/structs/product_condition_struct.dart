// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductConditionStruct extends FFFirebaseStruct {
  ProductConditionStruct({
    int? id,
    String? name,
    String? description,
    int? status,
    Color? color,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _description = description,
        _status = status,
        _color = color,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

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

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;
  void incrementStatus(int amount) => _status = status + amount;
  bool hasStatus() => _status != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;
  bool hasColor() => _color != null;

  static ProductConditionStruct fromMap(Map<String, dynamic> data) =>
      ProductConditionStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        status: castToType<int>(data['status']),
        color: getSchemaColor(data['color']),
      );

  static ProductConditionStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductConditionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'status': _status,
        'color': _color,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
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
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
      }.withoutNulls;

  static ProductConditionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductConditionStruct(
        id: deserializeParam(
          data['id'],
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
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'ProductConditionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductConditionStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        status == other.status &&
        color == other.color;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, description, status, color]);
}

ProductConditionStruct createProductConditionStruct({
  int? id,
  String? name,
  String? description,
  int? status,
  Color? color,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductConditionStruct(
      id: id,
      name: name,
      description: description,
      status: status,
      color: color,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductConditionStruct? updateProductConditionStruct(
  ProductConditionStruct? productCondition, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productCondition
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductConditionStructData(
  Map<String, dynamic> firestoreData,
  ProductConditionStruct? productCondition,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productCondition == null) {
    return;
  }
  if (productCondition.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productCondition.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productConditionData =
      getProductConditionFirestoreData(productCondition, forFieldValue);
  final nestedData =
      productConditionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productCondition.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductConditionFirestoreData(
  ProductConditionStruct? productCondition, [
  bool forFieldValue = false,
]) {
  if (productCondition == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productCondition.toMap());

  // Add any Firestore field values
  productCondition.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductConditionListFirestoreData(
  List<ProductConditionStruct>? productConditions,
) =>
    productConditions
        ?.map((e) => getProductConditionFirestoreData(e, true))
        .toList() ??
    [];
