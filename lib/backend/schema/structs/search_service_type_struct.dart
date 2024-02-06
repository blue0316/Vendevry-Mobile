// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchServiceTypeStruct extends FFFirebaseStruct {
  SearchServiceTypeStruct({
    int? serviceId,
    String? serviceName,
    List<String>? images,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _serviceId = serviceId,
        _serviceName = serviceName,
        _images = images,
        super(firestoreUtilData);

  // "service_id" field.
  int? _serviceId;
  int get serviceId => _serviceId ?? 0;
  set serviceId(int? val) => _serviceId = val;
  void incrementServiceId(int amount) => _serviceId = serviceId + amount;
  bool hasServiceId() => _serviceId != null;

  // "service_name" field.
  String? _serviceName;
  String get serviceName => _serviceName ?? '';
  set serviceName(String? val) => _serviceName = val;
  bool hasServiceName() => _serviceName != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  set images(List<String>? val) => _images = val;
  void updateImages(Function(List<String>) updateFn) =>
      updateFn(_images ??= []);
  bool hasImages() => _images != null;

  static SearchServiceTypeStruct fromMap(Map<String, dynamic> data) =>
      SearchServiceTypeStruct(
        serviceId: castToType<int>(data['service_id']),
        serviceName: data['service_name'] as String?,
        images: getDataList(data['images']),
      );

  static SearchServiceTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchServiceTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'service_id': _serviceId,
        'service_name': _serviceName,
        'images': _images,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'service_id': serializeParam(
          _serviceId,
          ParamType.int,
        ),
        'service_name': serializeParam(
          _serviceName,
          ParamType.String,
        ),
        'images': serializeParam(
          _images,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static SearchServiceTypeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SearchServiceTypeStruct(
        serviceId: deserializeParam(
          data['service_id'],
          ParamType.int,
          false,
        ),
        serviceName: deserializeParam(
          data['service_name'],
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
  String toString() => 'SearchServiceTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SearchServiceTypeStruct &&
        serviceId == other.serviceId &&
        serviceName == other.serviceName &&
        listEquality.equals(images, other.images);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([serviceId, serviceName, images]);
}

SearchServiceTypeStruct createSearchServiceTypeStruct({
  int? serviceId,
  String? serviceName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SearchServiceTypeStruct(
      serviceId: serviceId,
      serviceName: serviceName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SearchServiceTypeStruct? updateSearchServiceTypeStruct(
  SearchServiceTypeStruct? searchServiceType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    searchServiceType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSearchServiceTypeStructData(
  Map<String, dynamic> firestoreData,
  SearchServiceTypeStruct? searchServiceType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (searchServiceType == null) {
    return;
  }
  if (searchServiceType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && searchServiceType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final searchServiceTypeData =
      getSearchServiceTypeFirestoreData(searchServiceType, forFieldValue);
  final nestedData =
      searchServiceTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = searchServiceType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSearchServiceTypeFirestoreData(
  SearchServiceTypeStruct? searchServiceType, [
  bool forFieldValue = false,
]) {
  if (searchServiceType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(searchServiceType.toMap());

  // Add any Firestore field values
  searchServiceType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSearchServiceTypeListFirestoreData(
  List<SearchServiceTypeStruct>? searchServiceTypes,
) =>
    searchServiceTypes
        ?.map((e) => getSearchServiceTypeFirestoreData(e, true))
        .toList() ??
    [];
