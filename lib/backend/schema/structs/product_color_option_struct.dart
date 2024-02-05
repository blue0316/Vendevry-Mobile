// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductColorOptionStruct extends FFFirebaseStruct {
  ProductColorOptionStruct({
    Color? color,
    double? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _color = color,
        _price = price,
        super(firestoreUtilData);

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;
  bool hasColor() => _color != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  static ProductColorOptionStruct fromMap(Map<String, dynamic> data) =>
      ProductColorOptionStruct(
        color: getSchemaColor(data['color']),
        price: castToType<double>(data['price']),
      );

  static ProductColorOptionStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductColorOptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'color': _color,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProductColorOptionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductColorOptionStruct(
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProductColorOptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductColorOptionStruct &&
        color == other.color &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([color, price]);
}

ProductColorOptionStruct createProductColorOptionStruct({
  Color? color,
  double? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductColorOptionStruct(
      color: color,
      price: price,
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
