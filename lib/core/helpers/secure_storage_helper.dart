import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:qoot/core/utils/secure_storage_keys.dart';

class SecureStorageHelper {
  // Create a single instance of FlutterSecureStorage
  final FlutterSecureStorage _secureStorage;

  SecureStorageHelper(this._secureStorage);

  //Common Keys
  static const String _tokenKey = SecureStorageKeys.token;

  //Write Data
  Future<void> writeData(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  //Read Data
  Future<String?> readData(String key) async {
    return await _secureStorage.read(key: key);
  }

  //Delete Data
  Future<void> deleteData(String key) async {
    await _secureStorage.delete(key: key);
  }

  //Clear All
  Future<void> clearAll() async {
    await _secureStorage.deleteAll();
  }

  //Token Helpers
  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: _tokenKey, value: token);
  }

  Future<String?> getToken() async {
    return await _secureStorage.read(key: _tokenKey);
  }

  Future<void> deleteToken() async {
    await _secureStorage.delete(key: _tokenKey);
  }
}
