// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceDefaultStruct extends FFFirebaseStruct {
  ServiceDefaultStruct({
    int? serviceId,
    int? vendorId,
    String? serviceName,
    double? servicePrice,
    double? discountPrice,
    List<String>? images,
    int? category,
    String? area,
    String? description,
    double? takeMin,
    double? commission,
    int? status,
    int? priceType,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _serviceId = serviceId,
        _vendorId = vendorId,
        _serviceName = serviceName,
        _servicePrice = servicePrice,
        _discountPrice = discountPrice,
        _images = images,
        _category = category,
        _area = area,
        _description = description,
        _takeMin = takeMin,
        _commission = commission,
        _status = status,
        _priceType = priceType,
        super(firestoreUtilData);

  // "service_id" field.
  int? _serviceId;
  int get serviceId => _serviceId ?? 0;
  set serviceId(int? val) => _serviceId = val;
  void incrementServiceId(int amount) => _serviceId = serviceId + amount;
  bool hasServiceId() => _serviceId != null;

  // "vendor_id" field.
  int? _vendorId;
  int get vendorId => _vendorId ?? 0;
  set vendorId(int? val) => _vendorId = val;
  void incrementVendorId(int amount) => _vendorId = vendorId + amount;
  bool hasVendorId() => _vendorId != null;

  // "service_name" field.
  String? _serviceName;
  String get serviceName => _serviceName ?? '';
  set serviceName(String? val) => _serviceName = val;
  bool hasServiceName() => _serviceName != null;

  // "service_price" field.
  double? _servicePrice;
  double get servicePrice => _servicePrice ?? 0.0;
  set servicePrice(double? val) => _servicePrice = val;
  void incrementServicePrice(double amount) =>
      _servicePrice = servicePrice + amount;
  bool hasServicePrice() => _servicePrice != null;

  // "discount_price" field.
  double? _discountPrice;
  double get discountPrice => _discountPrice ?? 0.0;
  set discountPrice(double? val) => _discountPrice = val;
  void incrementDiscountPrice(double amount) =>
      _discountPrice = discountPrice + amount;
  bool hasDiscountPrice() => _discountPrice != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  set images(List<String>? val) => _images = val;
  void updateImages(Function(List<String>) updateFn) =>
      updateFn(_images ??= []);
  bool hasImages() => _images != null;

  // "category" field.
  int? _category;
  int get category => _category ?? 0;
  set category(int? val) => _category = val;
  void incrementCategory(int amount) => _category = category + amount;
  bool hasCategory() => _category != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  set area(String? val) => _area = val;
  bool hasArea() => _area != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "take_min" field.
  double? _takeMin;
  double get takeMin => _takeMin ?? 0.0;
  set takeMin(double? val) => _takeMin = val;
  void incrementTakeMin(double amount) => _takeMin = takeMin + amount;
  bool hasTakeMin() => _takeMin != null;

  // "commission" field.
  double? _commission;
  double get commission => _commission ?? 0.0;
  set commission(double? val) => _commission = val;
  void incrementCommission(double amount) => _commission = commission + amount;
  bool hasCommission() => _commission != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;
  void incrementStatus(int amount) => _status = status + amount;
  bool hasStatus() => _status != null;

  // "price_type" field.
  int? _priceType;
  int get priceType => _priceType ?? 0;
  set priceType(int? val) => _priceType = val;
  void incrementPriceType(int amount) => _priceType = priceType + amount;
  bool hasPriceType() => _priceType != null;

  static ServiceDefaultStruct fromMap(Map<String, dynamic> data) =>
      ServiceDefaultStruct(
        serviceId: castToType<int>(data['service_id']),
        vendorId: castToType<int>(data['vendor_id']),
        serviceName: data['service_name'] as String?,
        servicePrice: castToType<double>(data['service_price']),
        discountPrice: castToType<double>(data['discount_price']),
        images: getDataList(data['images']),
        category: castToType<int>(data['category']),
        area: data['area'] as String?,
        description: data['description'] as String?,
        takeMin: castToType<double>(data['take_min']),
        commission: castToType<double>(data['commission']),
        status: castToType<int>(data['status']),
        priceType: castToType<int>(data['price_type']),
      );

  static ServiceDefaultStruct? maybeFromMap(dynamic data) => data is Map
      ? ServiceDefaultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'service_id': _serviceId,
        'vendor_id': _vendorId,
        'service_name': _serviceName,
        'service_price': _servicePrice,
        'discount_price': _discountPrice,
        'images': _images,
        'category': _category,
        'area': _area,
        'description': _description,
        'take_min': _takeMin,
        'commission': _commission,
        'status': _status,
        'price_type': _priceType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'service_id': serializeParam(
          _serviceId,
          ParamType.int,
        ),
        'vendor_id': serializeParam(
          _vendorId,
          ParamType.int,
        ),
        'service_name': serializeParam(
          _serviceName,
          ParamType.String,
        ),
        'service_price': serializeParam(
          _servicePrice,
          ParamType.double,
        ),
        'discount_price': serializeParam(
          _discountPrice,
          ParamType.double,
        ),
        'images': serializeParam(
          _images,
          ParamType.String,
          true,
        ),
        'category': serializeParam(
          _category,
          ParamType.int,
        ),
        'area': serializeParam(
          _area,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'take_min': serializeParam(
          _takeMin,
          ParamType.double,
        ),
        'commission': serializeParam(
          _commission,
          ParamType.double,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'price_type': serializeParam(
          _priceType,
          ParamType.int,
        ),
      }.withoutNulls;

  static ServiceDefaultStruct fromSerializableMap(Map<String, dynamic> data) =>
      ServiceDefaultStruct(
        serviceId: deserializeParam(
          data['service_id'],
          ParamType.int,
          false,
        ),
        vendorId: deserializeParam(
          data['vendor_id'],
          ParamType.int,
          false,
        ),
        serviceName: deserializeParam(
          data['service_name'],
          ParamType.String,
          false,
        ),
        servicePrice: deserializeParam(
          data['service_price'],
          ParamType.double,
          false,
        ),
        discountPrice: deserializeParam(
          data['discount_price'],
          ParamType.double,
          false,
        ),
        images: deserializeParam<String>(
          data['images'],
          ParamType.String,
          true,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.int,
          false,
        ),
        area: deserializeParam(
          data['area'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        takeMin: deserializeParam(
          data['take_min'],
          ParamType.double,
          false,
        ),
        commission: deserializeParam(
          data['commission'],
          ParamType.double,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        priceType: deserializeParam(
          data['price_type'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ServiceDefaultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ServiceDefaultStruct &&
        serviceId == other.serviceId &&
        vendorId == other.vendorId &&
        serviceName == other.serviceName &&
        servicePrice == other.servicePrice &&
        discountPrice == other.discountPrice &&
        listEquality.equals(images, other.images) &&
        category == other.category &&
        area == other.area &&
        description == other.description &&
        takeMin == other.takeMin &&
        commission == other.commission &&
        status == other.status &&
        priceType == other.priceType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        serviceId,
        vendorId,
        serviceName,
        servicePrice,
        discountPrice,
        images,
        category,
        area,
        description,
        takeMin,
        commission,
        status,
        priceType
      ]);
}

ServiceDefaultStruct createServiceDefaultStruct({
  int? serviceId,
  int? vendorId,
  String? serviceName,
  double? servicePrice,
  double? discountPrice,
  int? category,
  String? area,
  String? description,
  double? takeMin,
  double? commission,
  int? status,
  int? priceType,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ServiceDefaultStruct(
      serviceId: serviceId,
      vendorId: vendorId,
      serviceName: serviceName,
      servicePrice: servicePrice,
      discountPrice: discountPrice,
      category: category,
      area: area,
      description: description,
      takeMin: takeMin,
      commission: commission,
      status: status,
      priceType: priceType,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ServiceDefaultStruct? updateServiceDefaultStruct(
  ServiceDefaultStruct? serviceDefault, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    serviceDefault
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addServiceDefaultStructData(
  Map<String, dynamic> firestoreData,
  ServiceDefaultStruct? serviceDefault,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (serviceDefault == null) {
    return;
  }
  if (serviceDefault.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && serviceDefault.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final serviceDefaultData =
      getServiceDefaultFirestoreData(serviceDefault, forFieldValue);
  final nestedData =
      serviceDefaultData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = serviceDefault.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getServiceDefaultFirestoreData(
  ServiceDefaultStruct? serviceDefault, [
  bool forFieldValue = false,
]) {
  if (serviceDefault == null) {
    return {};
  }
  final firestoreData = mapToFirestore(serviceDefault.toMap());

  // Add any Firestore field values
  serviceDefault.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getServiceDefaultListFirestoreData(
  List<ServiceDefaultStruct>? serviceDefaults,
) =>
    serviceDefaults
        ?.map((e) => getServiceDefaultFirestoreData(e, true))
        .toList() ??
    [];
