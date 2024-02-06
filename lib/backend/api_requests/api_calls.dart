import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start AUTH Group Code

class AuthGroup {
  static String baseUrl = 'https://vendevry.com/api/v1';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static RegisterCall registerCall = RegisterCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${AuthGroup.baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  bool? result(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.result''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  dynamic? user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  int? userid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  String? useremail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  String? userfirstname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.first_name''',
      ));
  String? userlastname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.last_name''',
      ));
  String? userphone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.phone''',
      ));
  String? userstate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.state''',
      ));
  String? useraddress(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.address''',
      ));
  String? usercity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.city''',
      ));
  String? usertaxid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.taxid''',
      ));
  int? userrole(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.role''',
      ));
}

class RegisterCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? role = '',
    String? firstname = '',
    String? lastname = '',
    String? address = '',
    String? city = '',
    String? state = '',
    String? phone = '',
    String? storename = '',
    String? storedesc = '',
    String? taxid = '',
    String? storelogo = '',
    String? storerole = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl: '${AuthGroup.baseUrl}/auth/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
        'role': role,
        'firstname': firstname,
        'lastname': lastname,
        'address': address,
        'city': city,
        'state': state,
        'phone': phone,
        'storename': storename,
        'storedesc': storedesc,
        'taxid': taxid,
        'storelogo': storelogo,
        'storerole': storerole,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  dynamic? authUser(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  dynamic? authStoreInfo(dynamic response) => getJsonField(
        response,
        r'''$.user.store''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  bool? result(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.result''',
      ));
}

/// End AUTH Group Code

/// Start VerifiedAPIs Group Code

class VerifiedAPIsGroup {
  static String baseUrl = 'https://vendevry.com/api/v1';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static SearchProductsCall searchProductsCall = SearchProductsCall();
  static SingleProductCall singleProductCall = SingleProductCall();
  static AllProductCategoriesCall allProductCategoriesCall =
      AllProductCategoriesCall();
  static AllServiceCategoriesCall allServiceCategoriesCall =
      AllServiceCategoriesCall();
  static AllProductConditionsCall allProductConditionsCall =
      AllProductConditionsCall();
  static AddVendorProductCall addVendorProductCall = AddVendorProductCall();
  static AllProductParentCategoriesCall allProductParentCategoriesCall =
      AllProductParentCategoriesCall();
  static ProductSubcategoriesCall productSubcategoriesCall =
      ProductSubcategoriesCall();
  static SearchServicesCall searchServicesCall = SearchServicesCall();
  static SingleServiceCall singleServiceCall = SingleServiceCall();
}

class SearchProductsCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? params = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SearchProducts',
      apiUrl: '${VerifiedAPIsGroup.baseUrl}/product/search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'name': name,
        'params': params,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  bool? resultStatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.result''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class SingleProductCall {
  Future<ApiCallResponse> call({
    int? productId,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SingleProduct',
      apiUrl: '${VerifiedAPIsGroup.baseUrl}/product/getByID/${productId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'productId': productId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  bool? resultStatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.result''',
      ));
  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  int? productId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.product_id''',
      ));
  int? vendorId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.vendor_id''',
      ));
  String? productName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.product_name''',
      ));
  int? productPrice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.product_price''',
      ));
  List<String>? images(dynamic response) => (getJsonField(
        response,
        r'''$.data.images''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? category(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.category''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.description''',
      ));
  String? condition(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.condition''',
      ));
  String? brand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.brand''',
      ));
  int? flatRate(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.flat_rate''',
      ));
  int? boost(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.boost''',
      ));
  int? commission(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.commission''',
      ));
  int? weight(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.weight''',
      ));
  int? length(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.length''',
      ));
  int? height(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.height''',
      ));
  int? width(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.width''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.created_at''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.updated_at''',
      ));
  int? stock(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.stock''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class AllProductCategoriesCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AllProductCategories',
      apiUrl: '${VerifiedAPIsGroup.baseUrl}/category/product',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? ids(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? names(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? parentIds(dynamic response) => getJsonField(
        response,
        r'''$.data[:].parent_id''',
        true,
      ) as List?;
  List<String>? descriptions(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? logo(dynamic response) => getJsonField(
        response,
        r'''$.data[:].logo''',
        true,
      ) as List?;
  List? banner(dynamic response) => getJsonField(
        response,
        r'''$.data[:].banner''',
        true,
      ) as List?;
  List<int>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class AllServiceCategoriesCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AllServiceCategories',
      apiUrl: '${VerifiedAPIsGroup.baseUrl}/category/service',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? ids(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? parentIds(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].parent_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? names(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? descriptions(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? logo(dynamic response) => getJsonField(
        response,
        r'''$.data[:].logo''',
        true,
      ) as List?;
  List<String>? banner(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].banner''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class AllProductConditionsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AllProductConditions',
      apiUrl: '${VerifiedAPIsGroup.baseUrl}/condition',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? ids(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? names(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? descriptions(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? colors(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].color''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AddVendorProductCall {
  Future<ApiCallResponse> call({
    String? name = '',
    int? category,
    String? condition = '',
    String? brand = '',
    dynamic? customOptionsJson,
    dynamic? colorsJson,
    List<String>? imagesList,
    String? description = '',
    double? price,
    double? commission,
    double? flatRate,
    double? boostPrice,
    int? boostDeadline,
    int? stock,
    int? vendorId,
    String? token = '',
  }) async {
    final images = _serializeList(imagesList);
    final customOptions = _serializeJson(customOptionsJson, true);
    final colors = _serializeJson(colorsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'AddVendorProduct',
      apiUrl: '${VerifiedAPIsGroup.baseUrl}/vendor/addProduct',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'name': name,
        'category': category,
        'condition': condition,
        'brand': brand,
        'custom_options': customOptions,
        'colors': colors,
        'images': images,
        'description': description,
        'price': price,
        'commission': commission,
        'flat_rate': flatRate,
        'boost_price': boostPrice,
        'boost_deadline': boostDeadline,
        'stock': stock,
        'vendor_id': vendorId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? vendorId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.vendor_id''',
      ));
  String? productName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.product_name''',
      ));
  String? category(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.category''',
      ));
  String? condition(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.condition''',
      ));
  String? brand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.brand''',
      ));
  String? images(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.images''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.description''',
      ));
  int? productPrice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.product_price''',
      ));
  int? commission(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.commission''',
      ));
  int? flatRate(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.flat_rate''',
      ));
  String? stock(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.stock''',
      ));
  int? productId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.product_id''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class AllProductParentCategoriesCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AllProductParentCategories',
      apiUrl: '${VerifiedAPIsGroup.baseUrl}/category/product/parentCategories',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? ids(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? names(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? descriptions(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? logo(dynamic response) => getJsonField(
        response,
        r'''$.data[:].logo''',
        true,
      ) as List?;
  List<String>? banner(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].banner''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ProductSubcategoriesCall {
  Future<ApiCallResponse> call({
    int? pid,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ProductSubcategories',
      apiUrl:
          '${VerifiedAPIsGroup.baseUrl}/category/product/subCategories/${pid}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? ids(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? names(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? descriptions(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? banner(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].banner''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class SearchServicesCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? params = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SearchServices',
      apiUrl: '${VerifiedAPIsGroup.baseUrl}/service/search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'name': name,
        'params': params,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<String>? names(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].service_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? images(dynamic response) => getJsonField(
        response,
        r'''$.data[:].images''',
        true,
      ) as List?;
  List<int>? ids(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].service_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class SingleServiceCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SingleService',
      apiUrl: '${VerifiedAPIsGroup.baseUrl}/service/getByID/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  int? serviceId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.service_id''',
      ));
  int? vendorId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.vendor_id''',
      ));
  String? serviceName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.service_name''',
      ));
  int? servicePrice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.service_price''',
      ));
  List? images(dynamic response) => getJsonField(
        response,
        r'''$.data.images''',
        true,
      ) as List?;
  int? category(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.category''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.description''',
      ));
  int? commission(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.commission''',
      ));
  int? priceType(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.price_type''',
      ));
  List? serviceCustomVariants(dynamic response) => getJsonField(
        response,
        r'''$.data.service_custom_variants''',
        true,
      ) as List?;
  List? serviceColorVariants(dynamic response) => getJsonField(
        response,
        r'''$.data.service_color_variants''',
        true,
      ) as List?;
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

/// End VerifiedAPIs Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
