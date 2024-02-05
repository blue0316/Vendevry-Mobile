// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductCustomOptionStruct extends FFFirebaseStruct {
  ProductCustomOptionStruct({
    String? content,
    double? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _content = content,
        _price = price,
        super(firestoreUtilData);

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;
  bool hasContent() => _content != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  static ProductCustomOptionStruct fromMap(Map<String, dynamic> data) =>
      ProductCustomOptionStruct(
        content: data['content'] as String?,
        price: castToType<double>(data['price']),
      );

  static ProductCustomOptionStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductCustomOptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'content': _content,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProductCustomOptionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductCustomOptionStruct(
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProductCustomOptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductCustomOptionStruct &&
        content == other.content &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([content, price]);
}

ProductCustomOptionStruct createProductCustomOptionStruct({
  String? content,
  double? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductCustomOptionStruct(
      content: content,
      price: price,
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
