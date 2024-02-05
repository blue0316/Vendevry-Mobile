// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductDefaultStruct extends FFFirebaseStruct {
  ProductDefaultStruct({
    int? productId,
    int? vendorId,
    String? productName,
    double? productPrice,
    double? discountPrice,
    List<String>? images,
    int? category,
    String? description,
    String? condition,
    String? brand,
    double? takeMin,
    double? flatRate,
    int? boost,
    String? shippingFromCompany,
    String? shippingFromCity,
    double? commission,
    String? type,
    String? payoutType,
    String? location,
    String? state,
    String? stockAvailable,
    String? itemType,
    double? weight,
    double? length,
    double? height,
    double? width,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? stock,
    List<ProductCustomOptionStruct>? customOptions,
    List<ProductColorOptionStruct>? colorOption,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productId = productId,
        _vendorId = vendorId,
        _productName = productName,
        _productPrice = productPrice,
        _discountPrice = discountPrice,
        _images = images,
        _category = category,
        _description = description,
        _condition = condition,
        _brand = brand,
        _takeMin = takeMin,
        _flatRate = flatRate,
        _boost = boost,
        _shippingFromCompany = shippingFromCompany,
        _shippingFromCity = shippingFromCity,
        _commission = commission,
        _type = type,
        _payoutType = payoutType,
        _location = location,
        _state = state,
        _stockAvailable = stockAvailable,
        _itemType = itemType,
        _weight = weight,
        _length = length,
        _height = height,
        _width = width,
        _status = status,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _stock = stock,
        _customOptions = customOptions,
        _colorOption = colorOption,
        super(firestoreUtilData);

  // "product_id" field.
  int? _productId;
  int get productId => _productId ?? 0;
  set productId(int? val) => _productId = val;
  void incrementProductId(int amount) => _productId = productId + amount;
  bool hasProductId() => _productId != null;

  // "vendor_id" field.
  int? _vendorId;
  int get vendorId => _vendorId ?? 0;
  set vendorId(int? val) => _vendorId = val;
  void incrementVendorId(int amount) => _vendorId = vendorId + amount;
  bool hasVendorId() => _vendorId != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;
  bool hasProductName() => _productName != null;

  // "product_price" field.
  double? _productPrice;
  double get productPrice => _productPrice ?? 0.0;
  set productPrice(double? val) => _productPrice = val;
  void incrementProductPrice(double amount) =>
      _productPrice = productPrice + amount;
  bool hasProductPrice() => _productPrice != null;

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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  set condition(String? val) => _condition = val;
  bool hasCondition() => _condition != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) => _brand = val;
  bool hasBrand() => _brand != null;

  // "take_min" field.
  double? _takeMin;
  double get takeMin => _takeMin ?? 0.0;
  set takeMin(double? val) => _takeMin = val;
  void incrementTakeMin(double amount) => _takeMin = takeMin + amount;
  bool hasTakeMin() => _takeMin != null;

  // "flat_rate" field.
  double? _flatRate;
  double get flatRate => _flatRate ?? 0.0;
  set flatRate(double? val) => _flatRate = val;
  void incrementFlatRate(double amount) => _flatRate = flatRate + amount;
  bool hasFlatRate() => _flatRate != null;

  // "boost" field.
  int? _boost;
  int get boost => _boost ?? 0;
  set boost(int? val) => _boost = val;
  void incrementBoost(int amount) => _boost = boost + amount;
  bool hasBoost() => _boost != null;

  // "shipping_from_company" field.
  String? _shippingFromCompany;
  String get shippingFromCompany => _shippingFromCompany ?? '';
  set shippingFromCompany(String? val) => _shippingFromCompany = val;
  bool hasShippingFromCompany() => _shippingFromCompany != null;

  // "shipping_from_city" field.
  String? _shippingFromCity;
  String get shippingFromCity => _shippingFromCity ?? '';
  set shippingFromCity(String? val) => _shippingFromCity = val;
  bool hasShippingFromCity() => _shippingFromCity != null;

  // "commission" field.
  double? _commission;
  double get commission => _commission ?? 0.0;
  set commission(double? val) => _commission = val;
  void incrementCommission(double amount) => _commission = commission + amount;
  bool hasCommission() => _commission != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "payout_type" field.
  String? _payoutType;
  String get payoutType => _payoutType ?? '';
  set payoutType(String? val) => _payoutType = val;
  bool hasPayoutType() => _payoutType != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;
  bool hasLocation() => _location != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;
  bool hasState() => _state != null;

  // "stock_available" field.
  String? _stockAvailable;
  String get stockAvailable => _stockAvailable ?? '';
  set stockAvailable(String? val) => _stockAvailable = val;
  bool hasStockAvailable() => _stockAvailable != null;

  // "item_type" field.
  String? _itemType;
  String get itemType => _itemType ?? '';
  set itemType(String? val) => _itemType = val;
  bool hasItemType() => _itemType != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  set weight(double? val) => _weight = val;
  void incrementWeight(double amount) => _weight = weight + amount;
  bool hasWeight() => _weight != null;

  // "length" field.
  double? _length;
  double get length => _length ?? 0.0;
  set length(double? val) => _length = val;
  void incrementLength(double amount) => _length = length + amount;
  bool hasLength() => _length != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  set height(double? val) => _height = val;
  void incrementHeight(double amount) => _height = height + amount;
  bool hasHeight() => _height != null;

  // "width" field.
  double? _width;
  double get width => _width ?? 0.0;
  set width(double? val) => _width = val;
  void incrementWidth(double amount) => _width = width + amount;
  bool hasWidth() => _width != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  set updatedAt(DateTime? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  set stock(int? val) => _stock = val;
  void incrementStock(int amount) => _stock = stock + amount;
  bool hasStock() => _stock != null;

  // "customOptions" field.
  List<ProductCustomOptionStruct>? _customOptions;
  List<ProductCustomOptionStruct> get customOptions =>
      _customOptions ?? const [];
  set customOptions(List<ProductCustomOptionStruct>? val) =>
      _customOptions = val;
  void updateCustomOptions(
          Function(List<ProductCustomOptionStruct>) updateFn) =>
      updateFn(_customOptions ??= []);
  bool hasCustomOptions() => _customOptions != null;

  // "colorOption" field.
  List<ProductColorOptionStruct>? _colorOption;
  List<ProductColorOptionStruct> get colorOption => _colorOption ?? const [];
  set colorOption(List<ProductColorOptionStruct>? val) => _colorOption = val;
  void updateColorOption(Function(List<ProductColorOptionStruct>) updateFn) =>
      updateFn(_colorOption ??= []);
  bool hasColorOption() => _colorOption != null;

  static ProductDefaultStruct fromMap(Map<String, dynamic> data) =>
      ProductDefaultStruct(
        productId: castToType<int>(data['product_id']),
        vendorId: castToType<int>(data['vendor_id']),
        productName: data['product_name'] as String?,
        productPrice: castToType<double>(data['product_price']),
        discountPrice: castToType<double>(data['discount_price']),
        images: getDataList(data['images']),
        category: castToType<int>(data['category']),
        description: data['description'] as String?,
        condition: data['condition'] as String?,
        brand: data['brand'] as String?,
        takeMin: castToType<double>(data['take_min']),
        flatRate: castToType<double>(data['flat_rate']),
        boost: castToType<int>(data['boost']),
        shippingFromCompany: data['shipping_from_company'] as String?,
        shippingFromCity: data['shipping_from_city'] as String?,
        commission: castToType<double>(data['commission']),
        type: data['type'] as String?,
        payoutType: data['payout_type'] as String?,
        location: data['location'] as String?,
        state: data['state'] as String?,
        stockAvailable: data['stock_available'] as String?,
        itemType: data['item_type'] as String?,
        weight: castToType<double>(data['weight']),
        length: castToType<double>(data['length']),
        height: castToType<double>(data['height']),
        width: castToType<double>(data['width']),
        status: data['status'] as String?,
        createdAt: data['created_at'] as DateTime?,
        updatedAt: data['updated_at'] as DateTime?,
        stock: castToType<int>(data['stock']),
        customOptions: getStructList(
          data['customOptions'],
          ProductCustomOptionStruct.fromMap,
        ),
        colorOption: getStructList(
          data['colorOption'],
          ProductColorOptionStruct.fromMap,
        ),
      );

  static ProductDefaultStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductDefaultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'product_id': _productId,
        'vendor_id': _vendorId,
        'product_name': _productName,
        'product_price': _productPrice,
        'discount_price': _discountPrice,
        'images': _images,
        'category': _category,
        'description': _description,
        'condition': _condition,
        'brand': _brand,
        'take_min': _takeMin,
        'flat_rate': _flatRate,
        'boost': _boost,
        'shipping_from_company': _shippingFromCompany,
        'shipping_from_city': _shippingFromCity,
        'commission': _commission,
        'type': _type,
        'payout_type': _payoutType,
        'location': _location,
        'state': _state,
        'stock_available': _stockAvailable,
        'item_type': _itemType,
        'weight': _weight,
        'length': _length,
        'height': _height,
        'width': _width,
        'status': _status,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'stock': _stock,
        'customOptions': _customOptions?.map((e) => e.toMap()).toList(),
        'colorOption': _colorOption?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_id': serializeParam(
          _productId,
          ParamType.int,
        ),
        'vendor_id': serializeParam(
          _vendorId,
          ParamType.int,
        ),
        'product_name': serializeParam(
          _productName,
          ParamType.String,
        ),
        'product_price': serializeParam(
          _productPrice,
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
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'condition': serializeParam(
          _condition,
          ParamType.String,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
        'take_min': serializeParam(
          _takeMin,
          ParamType.double,
        ),
        'flat_rate': serializeParam(
          _flatRate,
          ParamType.double,
        ),
        'boost': serializeParam(
          _boost,
          ParamType.int,
        ),
        'shipping_from_company': serializeParam(
          _shippingFromCompany,
          ParamType.String,
        ),
        'shipping_from_city': serializeParam(
          _shippingFromCity,
          ParamType.String,
        ),
        'commission': serializeParam(
          _commission,
          ParamType.double,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'payout_type': serializeParam(
          _payoutType,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'stock_available': serializeParam(
          _stockAvailable,
          ParamType.String,
        ),
        'item_type': serializeParam(
          _itemType,
          ParamType.String,
        ),
        'weight': serializeParam(
          _weight,
          ParamType.double,
        ),
        'length': serializeParam(
          _length,
          ParamType.double,
        ),
        'height': serializeParam(
          _height,
          ParamType.double,
        ),
        'width': serializeParam(
          _width,
          ParamType.double,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.DateTime,
        ),
        'stock': serializeParam(
          _stock,
          ParamType.int,
        ),
        'customOptions': serializeParam(
          _customOptions,
          ParamType.DataStruct,
          true,
        ),
        'colorOption': serializeParam(
          _colorOption,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static ProductDefaultStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductDefaultStruct(
        productId: deserializeParam(
          data['product_id'],
          ParamType.int,
          false,
        ),
        vendorId: deserializeParam(
          data['vendor_id'],
          ParamType.int,
          false,
        ),
        productName: deserializeParam(
          data['product_name'],
          ParamType.String,
          false,
        ),
        productPrice: deserializeParam(
          data['product_price'],
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
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        condition: deserializeParam(
          data['condition'],
          ParamType.String,
          false,
        ),
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
        takeMin: deserializeParam(
          data['take_min'],
          ParamType.double,
          false,
        ),
        flatRate: deserializeParam(
          data['flat_rate'],
          ParamType.double,
          false,
        ),
        boost: deserializeParam(
          data['boost'],
          ParamType.int,
          false,
        ),
        shippingFromCompany: deserializeParam(
          data['shipping_from_company'],
          ParamType.String,
          false,
        ),
        shippingFromCity: deserializeParam(
          data['shipping_from_city'],
          ParamType.String,
          false,
        ),
        commission: deserializeParam(
          data['commission'],
          ParamType.double,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        payoutType: deserializeParam(
          data['payout_type'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        stockAvailable: deserializeParam(
          data['stock_available'],
          ParamType.String,
          false,
        ),
        itemType: deserializeParam(
          data['item_type'],
          ParamType.String,
          false,
        ),
        weight: deserializeParam(
          data['weight'],
          ParamType.double,
          false,
        ),
        length: deserializeParam(
          data['length'],
          ParamType.double,
          false,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.double,
          false,
        ),
        width: deserializeParam(
          data['width'],
          ParamType.double,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.DateTime,
          false,
        ),
        stock: deserializeParam(
          data['stock'],
          ParamType.int,
          false,
        ),
        customOptions: deserializeStructParam<ProductCustomOptionStruct>(
          data['customOptions'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductCustomOptionStruct.fromSerializableMap,
        ),
        colorOption: deserializeStructParam<ProductColorOptionStruct>(
          data['colorOption'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductColorOptionStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProductDefaultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductDefaultStruct &&
        productId == other.productId &&
        vendorId == other.vendorId &&
        productName == other.productName &&
        productPrice == other.productPrice &&
        discountPrice == other.discountPrice &&
        listEquality.equals(images, other.images) &&
        category == other.category &&
        description == other.description &&
        condition == other.condition &&
        brand == other.brand &&
        takeMin == other.takeMin &&
        flatRate == other.flatRate &&
        boost == other.boost &&
        shippingFromCompany == other.shippingFromCompany &&
        shippingFromCity == other.shippingFromCity &&
        commission == other.commission &&
        type == other.type &&
        payoutType == other.payoutType &&
        location == other.location &&
        state == other.state &&
        stockAvailable == other.stockAvailable &&
        itemType == other.itemType &&
        weight == other.weight &&
        length == other.length &&
        height == other.height &&
        width == other.width &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        stock == other.stock &&
        listEquality.equals(customOptions, other.customOptions) &&
        listEquality.equals(colorOption, other.colorOption);
  }

  @override
  int get hashCode => const ListEquality().hash([
        productId,
        vendorId,
        productName,
        productPrice,
        discountPrice,
        images,
        category,
        description,
        condition,
        brand,
        takeMin,
        flatRate,
        boost,
        shippingFromCompany,
        shippingFromCity,
        commission,
        type,
        payoutType,
        location,
        state,
        stockAvailable,
        itemType,
        weight,
        length,
        height,
        width,
        status,
        createdAt,
        updatedAt,
        stock,
        customOptions,
        colorOption
      ]);
}

ProductDefaultStruct createProductDefaultStruct({
  int? productId,
  int? vendorId,
  String? productName,
  double? productPrice,
  double? discountPrice,
  int? category,
  String? description,
  String? condition,
  String? brand,
  double? takeMin,
  double? flatRate,
  int? boost,
  String? shippingFromCompany,
  String? shippingFromCity,
  double? commission,
  String? type,
  String? payoutType,
  String? location,
  String? state,
  String? stockAvailable,
  String? itemType,
  double? weight,
  double? length,
  double? height,
  double? width,
  String? status,
  DateTime? createdAt,
  DateTime? updatedAt,
  int? stock,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductDefaultStruct(
      productId: productId,
      vendorId: vendorId,
      productName: productName,
      productPrice: productPrice,
      discountPrice: discountPrice,
      category: category,
      description: description,
      condition: condition,
      brand: brand,
      takeMin: takeMin,
      flatRate: flatRate,
      boost: boost,
      shippingFromCompany: shippingFromCompany,
      shippingFromCity: shippingFromCity,
      commission: commission,
      type: type,
      payoutType: payoutType,
      location: location,
      state: state,
      stockAvailable: stockAvailable,
      itemType: itemType,
      weight: weight,
      length: length,
      height: height,
      width: width,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
      stock: stock,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductDefaultStruct? updateProductDefaultStruct(
  ProductDefaultStruct? productDefault, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productDefault
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductDefaultStructData(
  Map<String, dynamic> firestoreData,
  ProductDefaultStruct? productDefault,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productDefault == null) {
    return;
  }
  if (productDefault.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productDefault.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productDefaultData =
      getProductDefaultFirestoreData(productDefault, forFieldValue);
  final nestedData =
      productDefaultData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productDefault.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductDefaultFirestoreData(
  ProductDefaultStruct? productDefault, [
  bool forFieldValue = false,
]) {
  if (productDefault == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productDefault.toMap());

  // Add any Firestore field values
  productDefault.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductDefaultListFirestoreData(
  List<ProductDefaultStruct>? productDefaults,
) =>
    productDefaults
        ?.map((e) => getProductDefaultFirestoreData(e, true))
        .toList() ??
    [];
