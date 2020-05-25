import 'package:dio/dio.dart';
import 'package:shopping_7186/models/authenticate-user.model.dart';
import 'package:shopping_7186/models/create-user.model.dart';
import 'package:shopping_7186/models/user.model.dart';
import 'package:shopping_7186/settings.dart';

class AccountRepository {
  Future<UserModel> authenticate(AuthenticateModel model) async {
    var url = "${Settings.apiUrl}v1/account/login";
    Response response = await Dio().post(url, data: model);
    return UserModel.fromJson(response.data);
  }

  Future<UserModel> create(CreateUserModel model) async {
    var url = "${Settings.apiUrl}v1/account";
    Response response = await Dio().post(url, data: model);
    return UserModel.fromJson(response.data);
  }
}
