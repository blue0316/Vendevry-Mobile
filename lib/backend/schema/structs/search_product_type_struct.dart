// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchProductTypeStruct extends FFFirebaseStruct {
  SearchProductTypeStruct({
    int? productId,
    String? productName,
    List<String>? images,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productId = productId,
        _productName = productName,
        _images = images,
        super(firestoreUtilData);

  // "product_id" field.
  int? _productId;
  int get productId => _productId ?? 0;
  set productId(int? val) => _productId = val;
  void incrementProductId(int amount) => _productId = productId + amount;
  bool hasProductId() => _productId != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;
  bool hasProductName() => _productName != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  set images(List<String>? val) => _images = val;
  void updateImages(Function(List<String>) updateFn) =>
      updateFn(_images ??= []);
  bool hasImages() => _images != null;

  static SearchProductTypeStruct fromMap(Map<String, dynamic> data) =>
      SearchProductTypeStruct(
        productId: castToType<int>(data['product_id']),
        productName: data['product_name'] as String?,
        images: getDataList(data['images']),
      );

  static SearchProductTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchProductTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'product_id': _productId,
        'product_name': _productName,
        'images': _images,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_id': serializeParam(
          _productId,
          ParamType.int,
        ),
        'product_name': serializeParam(
          _productName,
          ParamType.String,
        ),
        'images': serializeParam(
          _images,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static SearchProductTypeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SearchProductTypeStruct(
        productId: deserializeParam(
          data['product_id'],
          ParamType.int,
          false,
        ),
        productName: deserializeParam(
          data['product_name'],
          ParamType.String,
          false,
        ),
        images: deserializeParam<String>(
          data['images'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'SearchProductTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SearchProductTypeStruct &&
        productId == other.productId &&
        productName == other.productName &&
        listEquality.equals(images, other.images);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([productId, productName, images]);
}

SearchProductTypeStruct createSearchProductTypeStruct({
  int? productId,
  String? productName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SearchProductTypeStruct(
      productId: productId,
      productName: productName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SearchProductTypeStruct? updateSearchProductTypeStruct(
  SearchProductTypeStruct? searchProductType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    searchProductType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSearchProductTypeStructData(
  Map<String, dynamic> firestoreData,
  SearchProductTypeStruct? searchProductType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (searchProductType == null) {
    return;
  }
  if (searchProductType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && searchProductType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final searchProductTypeData =
      getSearchProductTypeFirestoreData(searchProductType, forFieldValue);
  final nestedData =
      searchProductTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = searchProductType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSearchProductTypeFirestoreData(
  SearchProductTypeStruct? searchProductType, [
  bool forFieldValue = false,
]) {
  if (searchProductType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(searchProductType.toMap());

  // Add any Firestore field values
  searchProductType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSearchProductTypeListFirestoreData(
  List<SearchProductTypeStruct>? searchProductTypes,
) =>
    searchProductTypes
        ?.map((e) => getSearchProductTypeFirestoreData(e, true))
        .toList() ??
    [];
