// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceCustomOptionStruct extends FFFirebaseStruct {
  ServiceCustomOptionStruct({
    double? price,
    String? value,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _price = price,
        _value = value,
        super(firestoreUtilData);

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;
  bool hasValue() => _value != null;

  static ServiceCustomOptionStruct fromMap(Map<String, dynamic> data) =>
      ServiceCustomOptionStruct(
        price: castToType<double>(data['price']),
        value: data['value'] as String?,
      );

  static ServiceCustomOptionStruct? maybeFromMap(dynamic data) => data is Map
      ? ServiceCustomOptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'price': _price,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
      }.withoutNulls;

  static ServiceCustomOptionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ServiceCustomOptionStruct(
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ServiceCustomOptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServiceCustomOptionStruct &&
        price == other.price &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([price, value]);
}

ServiceCustomOptionStruct createServiceCustomOptionStruct({
  double? price,
  String? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ServiceCustomOptionStruct(
      price: price,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ServiceCustomOptionStruct? updateServiceCustomOptionStruct(
  ServiceCustomOptionStruct? serviceCustomOption, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    serviceCustomOption
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addServiceCustomOptionStructData(
  Map<String, dynamic> firestoreData,
  ServiceCustomOptionStruct? serviceCustomOption,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (serviceCustomOption == null) {
    return;
  }
  if (serviceCustomOption.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && serviceCustomOption.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final serviceCustomOptionData =
      getServiceCustomOptionFirestoreData(serviceCustomOption, forFieldValue);
  final nestedData =
      serviceCustomOptionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      serviceCustomOption.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getServiceCustomOptionFirestoreData(
  ServiceCustomOptionStruct? serviceCustomOption, [
  bool forFieldValue = false,
]) {
  if (serviceCustomOption == null) {
    return {};
  }
  final firestoreData = mapToFirestore(serviceCustomOption.toMap());

  // Add any Firestore field values
  serviceCustomOption.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getServiceCustomOptionListFirestoreData(
  List<ServiceCustomOptionStruct>? serviceCustomOptions,
) =>
    serviceCustomOptions
        ?.map((e) => getServiceCustomOptionFirestoreData(e, true))
        .toList() ??
    [];
