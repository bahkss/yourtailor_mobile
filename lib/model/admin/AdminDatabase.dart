// In-memory user database

import 'package:yourtailor/model/admin/admin_login_info.dart';

class AdminDatabase {
  static final List<AdminLoginInfo> _users = [];

  static void addUser(AdminLoginInfo user) {
    _users.add(user);
  }

  static bool validateUser(String username, String password) {
    return _users.any((user) => user.AdminUsername == username && user.AdminPassword == password);
  }

  static void populateDatabase() {
    addUser(AdminLoginInfo(AdminUsername: 'admin', AdminPassword: '123456'));
  }
}
