// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductColorOptionStruct extends FFFirebaseStruct {
  ProductColorOptionStruct({
    double? price,
    Color? value,
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
  Color? _value;
  Color? get value => _value;
  set value(Color? val) => _value = val;
  bool hasValue() => _value != null;

  static ProductColorOptionStruct fromMap(Map<String, dynamic> data) =>
      ProductColorOptionStruct(
        price: castToType<double>(data['price']),
        value: getSchemaColor(data['value']),
      );

  static ProductColorOptionStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductColorOptionStruct.fromMap(data.cast<String, dynamic>())
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
          ParamType.Color,
        ),
      }.withoutNulls;

  static ProductColorOptionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductColorOptionStruct(
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'ProductColorOptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductColorOptionStruct &&
        price == other.price &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([price, value]);
}

ProductColorOptionStruct createProductColorOptionStruct({
  double? price,
  Color? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductColorOptionStruct(
      price: price,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductColorOptionStruct? updateProductColorOptionStruct(
  ProductColorOptionStruct? productColorOption, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productColorOption
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductColorOptionStructData(
  Map<String, dynamic> firestoreData,
  ProductColorOptionStruct? productColorOption,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productColorOption == null) {
    return;
  }
  if (productColorOption.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productColorOption.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productColorOptionData =
      getProductColorOptionFirestoreData(productColorOption, forFieldValue);
  final nestedData =
      productColorOptionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      productColorOption.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductColorOptionFirestoreData(
  ProductColorOptionStruct? productColorOption, [
  bool forFieldValue = false,
]) {
  if (productColorOption == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productColorOption.toMap());

  // Add any Firestore field values
  productColorOption.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductColorOptionListFirestoreData(
  List<ProductColorOptionStruct>? productColorOptions,
) =>
    productColorOptions
        ?.map((e) => getProductColorOptionFirestoreData(e, true))
        .toList() ??
    [];
