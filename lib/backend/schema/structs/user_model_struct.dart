// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserModelStruct extends FFFirebaseStruct {
  UserModelStruct({
    int? id,
    String? name,
    String? email,
    String? firstName,
    String? lastName,
    String? ssn,
    String? phone,
    String? address,
    String? state,
    String? city,
    String? taxid,
    int? role,
    StoreModelStruct? store,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _email = email,
        _firstName = firstName,
        _lastName = lastName,
        _ssn = ssn,
        _phone = phone,
        _address = address,
        _state = state,
        _city = city,
        _taxid = taxid,
        _role = role,
        _store = store,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  // "ssn" field.
  String? _ssn;
  String get ssn => _ssn ?? '';
  set ssn(String? val) => _ssn = val;
  bool hasSsn() => _ssn != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;
  bool hasPhone() => _phone != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;
  bool hasState() => _state != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "taxid" field.
  String? _taxid;
  String get taxid => _taxid ?? '';
  set taxid(String? val) => _taxid = val;
  bool hasTaxid() => _taxid != null;

  // "role" field.
  int? _role;
  int get role => _role ?? 0;
  set role(int? val) => _role = val;
  void incrementRole(int amount) => _role = role + amount;
  bool hasRole() => _role != null;

  // "store" field.
  StoreModelStruct? _store;
  StoreModelStruct get store => _store ?? StoreModelStruct();
  set store(StoreModelStruct? val) => _store = val;
  void updateStore(Function(StoreModelStruct) updateFn) =>
      updateFn(_store ??= StoreModelStruct());
  bool hasStore() => _store != null;

  static UserModelStruct fromMap(Map<String, dynamic> data) => UserModelStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        email: data['email'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        ssn: data['ssn'] as String?,
        phone: data['phone'] as String?,
        address: data['address'] as String?,
        state: data['state'] as String?,
        city: data['city'] as String?,
        taxid: data['taxid'] as String?,
        role: castToType<int>(data['role']),
        store: StoreModelStruct.maybeFromMap(data['store']),
      );

  static UserModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'email': _email,
        'first_name': _firstName,
        'last_name': _lastName,
        'ssn': _ssn,
        'phone': _phone,
        'address': _address,
        'state': _state,
        'city': _city,
        'taxid': _taxid,
        'role': _role,
        'store': _store?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'ssn': serializeParam(
          _ssn,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'taxid': serializeParam(
          _taxid,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.int,
        ),
        'store': serializeParam(
          _store,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UserModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        ssn: deserializeParam(
          data['ssn'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        taxid: deserializeParam(
          data['taxid'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.int,
          false,
        ),
        store: deserializeStructParam(
          data['store'],
          ParamType.DataStruct,
          false,
          structBuilder: StoreModelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserModelStruct &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        ssn == other.ssn &&
        phone == other.phone &&
        address == other.address &&
        state == other.state &&
        city == other.city &&
        taxid == other.taxid &&
        role == other.role &&
        store == other.store;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        email,
        firstName,
        lastName,
        ssn,
        phone,
        address,
        state,
        city,
        taxid,
        role,
        store
      ]);
}

UserModelStruct createUserModelStruct({
  int? id,
  String? name,
  String? email,
  String? firstName,
  String? lastName,
  String? ssn,
  String? phone,
  String? address,
  String? state,
  String? city,
  String? taxid,
  int? role,
  StoreModelStruct? store,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserModelStruct(
      id: id,
      name: name,
      email: email,
      firstName: firstName,
      lastName: lastName,
      ssn: ssn,
      phone: phone,
      address: address,
      state: state,
      city: city,
      taxid: taxid,
      role: role,
      store: store ?? (clearUnsetFields ? StoreModelStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserModelStruct? updateUserModelStruct(
  UserModelStruct? userModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserModelStructData(
  Map<String, dynamic> firestoreData,
  UserModelStruct? userModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userModel == null) {
    return;
  }
  if (userModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userModelData = getUserModelFirestoreData(userModel, forFieldValue);
  final nestedData = userModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserModelFirestoreData(
  UserModelStruct? userModel, [
  bool forFieldValue = false,
]) {
  if (userModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userModel.toMap());

  // Handle nested data for "store" field.
  addStoreModelStructData(
    firestoreData,
    userModel.hasStore() ? userModel.store : null,
    'store',
    forFieldValue,
  );

  // Add any Firestore field values
  userModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserModelListFirestoreData(
  List<UserModelStruct>? userModels,
) =>
    userModels?.map((e) => getUserModelFirestoreData(e, true)).toList() ?? [];
