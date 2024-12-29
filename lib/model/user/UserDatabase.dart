// In-memory user database

import 'package:yourtailor/model/user/user_login_info.dart';

class UserDatabase {
  static final List<UserLoginInfo> _users = [];

  static void addUser(UserLoginInfo user) {
    _users.add(user);
  }

  static bool validateUser(String username, String password) {
    return _users.any((user) => user.Username == username && user.UserPassword == password);
  }

  static void populateDatabase() {
    addUser(UserLoginInfo(Username: 'user', UserPassword: '123456'));
  }
}
