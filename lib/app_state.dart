import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_loggedInUser') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_loggedInUser') ?? '{}';
          _loggedInUser =
              UserModelStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _firstLoggedIn =
          await secureStorage.getBool('ff_firstLoggedIn') ?? _firstLoggedIn;
    });
    await _safeInitAsync(() async {
      _accessToken =
          await secureStorage.getString('ff_accessToken') ?? _accessToken;
    });
    await _safeInitAsync(() async {
      _isAgreeTerms =
          await secureStorage.getBool('ff_isAgreeTerms') ?? _isAgreeTerms;
    });
    await _safeInitAsync(() async {
      _productCategories =
          (await secureStorage.getStringList('ff_productCategories'))
                  ?.map((x) {
                    try {
                      return ProductCategoryStruct.fromSerializableMap(
                          jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _productCategories;
    });
    await _safeInitAsync(() async {
      _serviceCategories =
          (await secureStorage.getStringList('ff_serviceCategories'))
                  ?.map((x) {
                    try {
                      return ServiceCategoryStruct.fromSerializableMap(
                          jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _serviceCategories;
    });
    await _safeInitAsync(() async {
      _productConditions =
          (await secureStorage.getStringList('ff_productConditions'))
                  ?.map((x) {
                    try {
                      return ProductConditionStruct.fromSerializableMap(
                          jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _productConditions;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  UserModelStruct _loggedInUser =
      UserModelStruct.fromSerializableMap(jsonDecode('{\"store\":\"{}\"}'));
  UserModelStruct get loggedInUser => _loggedInUser;
  set loggedInUser(UserModelStruct _value) {
    _loggedInUser = _value;
    secureStorage.setString('ff_loggedInUser', _value.serialize());
  }

  void deleteLoggedInUser() {
    secureStorage.delete(key: 'ff_loggedInUser');
  }

  void updateLoggedInUserStruct(Function(UserModelStruct) updateFn) {
    updateFn(_loggedInUser);
    secureStorage.setString('ff_loggedInUser', _loggedInUser.serialize());
  }

  bool _firstLoggedIn = true;
  bool get firstLoggedIn => _firstLoggedIn;
  set firstLoggedIn(bool _value) {
    _firstLoggedIn = _value;
    secureStorage.setBool('ff_firstLoggedIn', _value);
  }

  void deleteFirstLoggedIn() {
    secureStorage.delete(key: 'ff_firstLoggedIn');
  }

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String _value) {
    _accessToken = _value;
    secureStorage.setString('ff_accessToken', _value);
  }

  void deleteAccessToken() {
    secureStorage.delete(key: 'ff_accessToken');
  }

  bool _isAgreeTerms = false;
  bool get isAgreeTerms => _isAgreeTerms;
  set isAgreeTerms(bool _value) {
    _isAgreeTerms = _value;
    secureStorage.setBool('ff_isAgreeTerms', _value);
  }

  void deleteIsAgreeTerms() {
    secureStorage.delete(key: 'ff_isAgreeTerms');
  }

  List<ProductCategoryStruct> _productCategories = [];
  List<ProductCategoryStruct> get productCategories => _productCategories;
  set productCategories(List<ProductCategoryStruct> _value) {
    _productCategories = _value;
    secureStorage.setStringList(
        'ff_productCategories', _value.map((x) => x.serialize()).toList());
  }

  void deleteProductCategories() {
    secureStorage.delete(key: 'ff_productCategories');
  }

  void addToProductCategories(ProductCategoryStruct _value) {
    _productCategories.add(_value);
    secureStorage.setStringList('ff_productCategories',
        _productCategories.map((x) => x.serialize()).toList());
  }

  void removeFromProductCategories(ProductCategoryStruct _value) {
    _productCategories.remove(_value);
    secureStorage.setStringList('ff_productCategories',
        _productCategories.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProductCategories(int _index) {
    _productCategories.removeAt(_index);
    secureStorage.setStringList('ff_productCategories',
        _productCategories.map((x) => x.serialize()).toList());
  }

  void updateProductCategoriesAtIndex(
    int _index,
    ProductCategoryStruct Function(ProductCategoryStruct) updateFn,
  ) {
    _productCategories[_index] = updateFn(_productCategories[_index]);
    secureStorage.setStringList('ff_productCategories',
        _productCategories.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProductCategories(
      int _index, ProductCategoryStruct _value) {
    _productCategories.insert(_index, _value);
    secureStorage.setStringList('ff_productCategories',
        _productCategories.map((x) => x.serialize()).toList());
  }

  double _optionPrice = 0.0;
  double get optionPrice => _optionPrice;
  set optionPrice(double _value) {
    _optionPrice = _value;
  }

  List<ServiceCategoryStruct> _serviceCategories = [];
  List<ServiceCategoryStruct> get serviceCategories => _serviceCategories;
  set serviceCategories(List<ServiceCategoryStruct> _value) {
    _serviceCategories = _value;
    secureStorage.setStringList(
        'ff_serviceCategories', _value.map((x) => x.serialize()).toList());
  }

  void deleteServiceCategories() {
    secureStorage.delete(key: 'ff_serviceCategories');
  }

  void addToServiceCategories(ServiceCategoryStruct _value) {
    _serviceCategories.add(_value);
    secureStorage.setStringList('ff_serviceCategories',
        _serviceCategories.map((x) => x.serialize()).toList());
  }

  void removeFromServiceCategories(ServiceCategoryStruct _value) {
    _serviceCategories.remove(_value);
    secureStorage.setStringList('ff_serviceCategories',
        _serviceCategories.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromServiceCategories(int _index) {
    _serviceCategories.removeAt(_index);
    secureStorage.setStringList('ff_serviceCategories',
        _serviceCategories.map((x) => x.serialize()).toList());
  }

  void updateServiceCategoriesAtIndex(
    int _index,
    ServiceCategoryStruct Function(ServiceCategoryStruct) updateFn,
  ) {
    _serviceCategories[_index] = updateFn(_serviceCategories[_index]);
    secureStorage.setStringList('ff_serviceCategories',
        _serviceCategories.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInServiceCategories(
      int _index, ServiceCategoryStruct _value) {
    _serviceCategories.insert(_index, _value);
    secureStorage.setStringList('ff_serviceCategories',
        _serviceCategories.map((x) => x.serialize()).toList());
  }

  List<ProductConditionStruct> _productConditions = [];
  List<ProductConditionStruct> get productConditions => _productConditions;
  set productConditions(List<ProductConditionStruct> _value) {
    _productConditions = _value;
    secureStorage.setStringList(
        'ff_productConditions', _value.map((x) => x.serialize()).toList());
  }

  void deleteProductConditions() {
    secureStorage.delete(key: 'ff_productConditions');
  }

  void addToProductConditions(ProductConditionStruct _value) {
    _productConditions.add(_value);
    secureStorage.setStringList('ff_productConditions',
        _productConditions.map((x) => x.serialize()).toList());
  }

  void removeFromProductConditions(ProductConditionStruct _value) {
    _productConditions.remove(_value);
    secureStorage.setStringList('ff_productConditions',
        _productConditions.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProductConditions(int _index) {
    _productConditions.removeAt(_index);
    secureStorage.setStringList('ff_productConditions',
        _productConditions.map((x) => x.serialize()).toList());
  }

  void updateProductConditionsAtIndex(
    int _index,
    ProductConditionStruct Function(ProductConditionStruct) updateFn,
  ) {
    _productConditions[_index] = updateFn(_productConditions[_index]);
    secureStorage.setStringList('ff_productConditions',
        _productConditions.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProductConditions(
      int _index, ProductConditionStruct _value) {
    _productConditions.insert(_index, _value);
    secureStorage.setStringList('ff_productConditions',
        _productConditions.map((x) => x.serialize()).toList());
  }

  int _productBoostOption = 0;
  int get productBoostOption => _productBoostOption;
  set productBoostOption(int _value) {
    _productBoostOption = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
