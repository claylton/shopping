import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping/models/authenticate-user.model.dart';
import 'package:shopping/models/create-user.model.dart';
import 'package:shopping/models/user.model.dart';
import 'package:shopping/repositories/account.repository.dart';
import 'package:shopping/settings/settings.dart';

class UserBloc extends ChangeNotifier {
  var user = new UserModel();

  UserBloc() {
    user = null;
    loadUser();
  }

  Future<UserModel> authenticate(AuthenticateModel model) async {
    try {
      var prefs = await SharedPreferences.getInstance();
      var repository = new AccountRepository();

      UserModel response = await repository.authenticate(model);

      user = response;
      await prefs.setString('user', jsonEncode(response));

      return response;
    } catch (e) {
      user = null;
      return null;
    }
  }

  Future<UserModel> create(CreateUserModel model) async {
    try {
      var repository = new AccountRepository();
      var res = await repository.create(model);
      return res;
    } catch (e) {
      print(e);
      user = null;
      return null;
    }
  }

  logout() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('user', null);
    user = null;
    notifyListeners();
  }

  Future loadUser() async {
    var prefs = await SharedPreferences.getInstance();
    var userData = prefs.getString('user');
    if (userData != null) {
      var res = UserModel.fromJson(jsonDecode(userData));
      Settings.user = res;
      user = res;
    }
  }
}
