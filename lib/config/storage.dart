import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  final storage = FlutterSecureStorage();
}

class StorageConstants {
  final String idToken = "idToken";
}
