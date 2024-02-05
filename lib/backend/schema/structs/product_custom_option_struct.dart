// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductCustomOptionStruct extends FFFirebaseStruct {
  ProductCustomOptionStruct({
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

  static ProductCustomOptionStruct fromMap(Map<String, dynamic> data) =>
      ProductCustomOptionStruct(
        price: castToType<double>(data['price']),
        value: data['value'] as String?,
      );

  static ProductCustomOptionStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductCustomOptionStruct.fromMap(data.cast<String, dynamic>())
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

  static ProductCustomOptionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductCustomOptionStruct(
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
  String toString() => 'ProductCustomOptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductCustomOptionStruct &&
        price == other.price &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([price, value]);
}

ProductCustomOptionStruct createProductCustomOptionStruct({
  double? price,
  String? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductCustomOptionStruct(
      price: price,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductCustomOptionStruct? updateProductCustomOptionStruct(
  ProductCustomOptionStruct? productCustomOption, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productCustomOption
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductCustomOptionStructData(
  Map<String, dynamic> firestoreData,
  ProductCustomOptionStruct? productCustomOption,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productCustomOption == null) {
    return;
  }
  if (productCustomOption.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productCustomOption.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productCustomOptionData =
      getProductCustomOptionFirestoreData(productCustomOption, forFieldValue);
  final nestedData =
      productCustomOptionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      productCustomOption.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductCustomOptionFirestoreData(
  ProductCustomOptionStruct? productCustomOption, [
  bool forFieldValue = false,
]) {
  if (productCustomOption == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productCustomOption.toMap());

  // Add any Firestore field values
  productCustomOption.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductCustomOptionListFirestoreData(
  List<ProductCustomOptionStruct>? productCustomOptions,
) =>
    productCustomOptions
        ?.map((e) => getProductCustomOptionFirestoreData(e, true))
        .toList() ??
    [];
