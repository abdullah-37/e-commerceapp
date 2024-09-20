import 'package:get_storage/get_storage.dart';

class MyLocalStorage {
  // Sigleton class
  static final MyLocalStorage _instance = MyLocalStorage._internal();
  factory MyLocalStorage() {
    return _instance;
  }
  MyLocalStorage._internal();

  // this code ensures that whenever you try to create an instance of
  // MyLocalStorage using MyLocalStorage(), you will always get the same instance
  //(_instance). This is a common pattern for implementing singletons in Dart.

  final _storage = GetStorage();

  // Generic Method to Save Data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic Method to Read Data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // }Generic Method to Remove data

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear All Data
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
